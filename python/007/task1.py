# Реализовать класс Matrix (матрица). Обеспечить перегрузку конструктора класса (метод __init__()),
# который должен принимать данные (список списков) для формирования матрицы. Следующий шаг — реализовать
# перегрузку метода __str__() для вывода матрицы в привычном виде. Далее реализовать перегрузку метода __add__()
# для реализации операции сложения двух объектов класса Matrix (двух матриц). Результатом сложения должна быть новая
# матрица. Подсказка: сложение элементов матриц выполнять поэлементно

from typing import List


class Matrix:
    def __init__(self, mtx: List[List[int]]):
        self.__mtx = mtx

    def __str__(self):
        lines = ''
        for i in range(len(self.__mtx)):
            lines += '\t'.join(map(str, self.__mtx[i])) + '\n'
        return lines

    def __add__(self, other: 'Matrix') -> 'Matrix':
        res = []
        if len(self.__mtx) != len(other.__mtx):
            raise NotImplementedError('Матрицы не равны')

        for i in range(len(self.__mtx)):
            if len(self.__mtx[i]) != len(other.__mtx[i]):
                raise NotImplementedError('Матрицы не равны')
            res.append([])
            for j in range(len(self.__mtx[i])):
                res[i].append(self.__mtx[i][j] + other.__mtx[i][j])

        return Matrix(res)


first_matrix = Matrix([[2, 3, 4],
                       [4, 5, 6],
                       [6, 7, 8]])

second_matrix = Matrix([[2, 3, 4],
                        [4, 5, 6],
                        [6, 7, 55]])

print(first_matrix + second_matrix)
