# Создать (не программно) текстовый файл со следующим содержимым:
# One — 1
# Two — 2
# Three — 3
# Four — 4
# Необходимо написать программу, открывающую файл на чтение и считывающую построчно данные.
# При этом английские числительные должны заменяться на русские.
# Новый блок строк должен записываться в новый текстовый файл.
DELIMITER = ' — '

new_dict = {'One': 'Один', 'Two': 'Два', 'Three': 'Три', 'Four': 'Четыре'}
with open('for_task4.txt') as file:
    with open('for_task4_2.txt', 'w') as new_file:
        for line in file:
            word, digit = line.strip().split(DELIMITER)

            if word in new_dict:
                new_text = f'{new_dict[word]}{DELIMITER}{digit}\n'
                new_file.write(new_text)
