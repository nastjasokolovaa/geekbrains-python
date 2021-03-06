# Представлен список чисел.
# Определить элементы списка, не имеющие повторений.
# Сформировать итоговый массив чисел, соответствующих требованию.
# Элементы вывести в порядке их следования в исходном списке.
# Для выполнения задания обязательно использовать генератор.
# Пример исходного списка: [2, 2, 2, 7, 23, 1, 44, 44, 3, 2, 10, 7, 4, 11].
# Результат: [23, 1, 3, 10, 4, 11]

def dedup(l):
    num_dict = {}
    for v in l:
        if v not in num_dict:
            num_dict[v] = 1
        else:
            num_dict[v] += 1
    for k, v in num_dict.items():
        if v == 1:
            yield k


old_list = [2, 2, 2, 7, 23, 1, 44, 44, 3, 2, 10, 7, 4, 11]

print(list(dedup(old_list)))
