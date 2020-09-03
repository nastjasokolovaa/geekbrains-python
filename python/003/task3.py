# Реализовать функцию my_func(),
# которая принимает три позиционных аргумента, и возвращает сумму наибольших двух аргументов.

def my_func(x, y, z):
    lst = [x, y, z]
    lst.sort(reverse=True)
    return lst[0] + lst[1]


print(my_func(6, 0, 9))
