from abc import ABC, abstractmethod
from random import randint, shuffle
from subprocess import call
from time import sleep
from typing import List, Tuple


class AbstractCard(ABC):
    def __init__(self, name: str, field: List[List[int]]):
        self.__name: str = name
        self.__field: List[List[int]] = field

    def is_complete(self) -> bool:
        for row in self.__field:
            for v in row:
                if v != 0 and v != -1:
                    return False

        return True

    def get_name(self):
        return self.__name

    def _mark(self, keg):
        for row in self.__field:
            for j, v in enumerate(row):
                if v == keg:
                    row[j] = -1

    def _has(self, keg) -> bool:
        for row in self.__field:
            for v in row:
                if v == keg:
                    return True

        return False

    def __str__(self) -> str:
        res = ''
        for row in self.__field:
            res += '|'
            for v in row:
                if v == 0:
                    res += '  |'
                elif v == -1:
                    res += '--|'
                else:
                    res += str(v).ljust(2, ' ') + '|'
            res += '\n'

        return res

    @abstractmethod
    def mark_or_not(self, keg) -> bool:
        pass


class PlayerCard(AbstractCard):
    def mark_or_not(self, keg) -> bool:
        while True:
            yn = input(f'{self.get_name()}, Do you have keg {keg}?(y/n): ').lower()

            if yn == 'y':
                if not self._has(keg):
                    return False
                self._mark(keg)
                return True
            elif yn == 'n':
                if self._has(keg):
                    return False
                return True
            else:
                continue


class PCCard(AbstractCard):
    def mark_or_not(self, keg) -> bool:
        if self._has(keg):
            print(self.get_name(), ': I have this one')
            self._mark(keg)
        else:
            print(self.get_name(), ": I haven't this keg")
        return True


def generate_kegs() -> List[int]:
    kegs = [x for x in range(1, 90 + 1)]
    shuffle(kegs)
    return kegs


class CardFabric:
    count_in_row = 5

    def __init__(self, w: int, h: int):
        if w < self.count_in_row:
            raise ValueError('invalid width, it must be greater than ' + str(self.count_in_row))

        self.__w = w
        self.__h = h

    def __generate_field(self) -> List[List[int]]:
        field = list()
        kegs = generate_kegs()
        for i in range(0, self.__h):
            field.append(list())

            for _ in range(self.__w):
                field[i].append(kegs.pop())
            field[i].sort()

            empty_positions = [x for x in range(0, self.__w)]
            shuffle(empty_positions)
            empty_positions = empty_positions[:self.__w - self.count_in_row]
            for pos in empty_positions:
                field[i][pos] = 0

        return field

    def build_player_card(self, name) -> AbstractCard:
        return PlayerCard(name, self.__generate_field())

    def build_pc_card(self, name) -> AbstractCard:
        return PCCard(name, self.__generate_field())


class Game:
    def __init__(self, *cards: AbstractCard):
        self.__cards: List[AbstractCard] = list(cards)
        pass

    def run(self):
        kegs = generate_kegs()
        while len(kegs) > 0:
            keg = kegs.pop()
            call('clear')
            for i, card in enumerate(self.__cards):
                print(f'Next keg [{keg}]')
                print(f'Turn of {card.get_name()}')
                print(card)

                if not card.mark_or_not(keg):
                    print('Looser!', card.get_name())
                    self.__cards.pop(i)
                    if len(self.__cards) == 1:
                        print('Winner!', self.__cards[0].get_name())
                        return
                    continue
                print('------------------\n')

                if card.is_complete():
                    print('Winner!', card.get_name())
                    return
                if isinstance(card, PCCard):
                    sleep(4)
