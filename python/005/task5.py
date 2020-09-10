# Создать (программно) текстовый файл, записать в него программно набор чисел,
# разделенных пробелами.
# Программа должна подсчитывать сумму чисел в файле и выводить ее на экран.
import os

new_list = [1, 2, 3, 4, 5, 6, 7, 8, 9]

with open('for_task5.txt', 'w+') as file:
    file.write(' '.join(map(str, new_list)))
    file.seek(0, os.SEEK_SET)
    print(sum(map(int, file.read().split())))
