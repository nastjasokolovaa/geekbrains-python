# Создать текстовый файл (не программно), сохранить в нем несколько строк,
# выполнить подсчет количества строк, количества слов в каждой строке.

lines_count = 0
words_by_line = {}
with open('for_task2.txt') as file:
    for line in file:
        lines_count += 1
        words_by_line[lines_count] = line.count(' ') + 1

print('Lines count:', lines_count)
print('Word count by lines:', words_by_line)
