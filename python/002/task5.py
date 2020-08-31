# Реализовать структуру «Рейтинг», представляющую собой не возрастающий набор натуральных чисел.
# У пользователя необходимо запрашивать новый элемент рейтинга.
# Если в рейтинге существуют элементы с одинаковыми значениями,
# то новый элемент с тем же значением должен разместиться после них.

rating = []
count = int(input('Сколько элементов будет в рейтинге: '))

for _ in range(count):
    n = int(input('Введите число: '))
    position_to_insert = 0
    for i, v in enumerate(rating):
        if n <= v:
            position_to_insert += 1
        else:
            break
    rating.insert(position_to_insert, n)

    print(rating)
