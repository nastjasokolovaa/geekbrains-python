# Реализовать функцию, принимающую два числа (позиционные аргументы) и выполняющую их деление.
# Числа запрашивать у пользователя, предусмотреть обработку ситуации деления на ноль.

def divide():
    while True:
        try:
            dividend = int(input('Введите число: '))
            divider = int(input('Введите второе число: '))
            return dividend / divider
        except ZeroDivisionError:
            print('Деление на ноль! Попробуйте еще раз')


print(divide())
