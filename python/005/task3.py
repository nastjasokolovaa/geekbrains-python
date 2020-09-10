# Создать текстовый файл (не программно), построчно записать фамилии сотрудников и
# величину их окладов.
# Определить, кто из сотрудников имеет оклад менее 20 тыс., вывести фамилии этих сотрудников.
# Выполнить подсчет средней величины дохода сотрудников.

total_salary = 0
employees_count = 0

with open('for_task3.txt') as file:
    for line in file:
        words = line.split(',')
        salary = int(words[1])

        if salary < 20000:
            print(words[0])

        total_salary += salary
        employees_count += 1

print(f'Average salary: {total_salary / employees_count}')
