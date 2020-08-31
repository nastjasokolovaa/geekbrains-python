# Пользователь вводит месяц в виде целого числа от 1 до 12.
# Сообщить к какому времени года относится месяц (зима, весна, лето, осень).
# Напишите решения через list и через dict.

# Решение 1(list).

def year_list():
    month_index = 1
    while True:
        month_index = int(input('Введите номер месяца: '))
        if month_index < 1 or month_index > 12:
            print('Такого месяца нет!')
            continue
        break
    year = ['Зима', 'Весна', 'Лето', 'Осень']
    year_by_month = [[12, 1, 2], [3, 4, 5], [6, 7, 8], [9, 10, 11]]
    for s in range(len(year_by_month)):
        if month_index in year_by_month[s]:
            print(year[s])
            break


year_list()

# Решение 2(dict).


def year_dict():
    year = {
        1: 'Зима',
        2: 'Зима',
        3: 'Весна',
        4: 'Весна',
        5: 'Весна',
        6: 'Лето',
        7: 'Лето',
        8: 'Лето',
        9: 'Осень',
        10: 'Осень',
        11: 'Осень',
        12: 'Зима',
    }
    month_index = 1
    while True:
        month_index = int(input('Введите номер месяца: '))
        if month_index in year:
            print(year[month_index])
            break
        else:
            print('Такого месяца нет!')


year_dict()
