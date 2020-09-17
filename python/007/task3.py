# Реализовать программу работы с органическими клетками, состоящими из ячеек. Необходимо создать класс Клетка.
# В его конструкторе инициализировать параметр, соответствующий количеству ячеек клетки (целое число).
# В классе должны быть реализованы методы перегрузки арифметических операторов: сложение (__add__()),
# вычитание (__sub__()), умножение (__mul__()), деление (__truediv__()). Данные методы должны применяться только к
# клеткам и выполнять увеличение, уменьшение, умножение и целочисленное (с округлением до целого) деление клеток, соотв.
# В классе необходимо реализовать метод make_order(),принимающий экземпляр класса и количество ячеек в ряду.
# Данный метод позволяет организовать ячейки по рядам. Метод должен возвращать строку вида *****\n*****\n*****...,
# где количество ячеек между \n равно переданному аргументу. Если ячеек на формирование ряда не хватает, то в
# последний ряд записываются все оставшиеся.


class Cell:
    def __init__(self, qty):
        self.__qty = qty

    def __str__(self):
        return f'{self.__qty}'

    def __add__(self, other):
        self.__qty = self.__qty + other.__qty
        return self.__qty

    def __sub__(self, other):
        self.__qty = self.__qty - other.__qty
        if self.__qty < other.__qty:
            raise ValueError('You cant do that')
        return self.__qty

    def __mul__(self, other):
        self.__qty = self.__qty * other.__qty
        return self.__qty

    def __truediv__(self, other):
        self.__qty = self.__qty // other.__qty
        return self.__qty

    def make_order(self, num: int) -> str:
        res = ''
        for i in range(1, self.__qty + 1):
            res += '*'
            if i > 0 and i % num == 0:
                res += '\n'
        return res


cell1 = Cell(15)
print(cell1.make_order(4))
cell2 = Cell(3)

print(int(cell1 / cell2))
