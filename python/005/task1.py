# Создать программно файл в текстовом формате, записать в него построчно данные,
# вводимые пользователем.
# Об окончании ввода данных свидетельствует пустая строка.
import sys

with open('for_task1.txt', mode='w') as file:
    while True:
        words = sys.stdin.readline()
        if words == '\n':
            break
        file.write(words)
