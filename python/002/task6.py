# *Реализовать структуру данных «Товары». Она должна представлять собой список кортежей.
# Каждый кортеж хранит информацию об отдельном товаре.
# В кортеже должно быть два элемента — номер товара и словарь с параметрами
# (характеристиками товара: название, цена, количество, единица измерения).
# Структуру нужно сформировать программно, т.е. запрашивать все данные у пользователя.

book = list()

again = True
while again:
    try:
        product = {
            'Название': input('Введите название товара: '),
            'Стоимость': float(input('Введите цену товара: ')),
            'Количество': int(input('Введите количество товаров: ')),
            'Единицы измерения': input('Введите единицы измерения: '),
        }
        book.append((len(book) + 1, product))
    except ValueError:
        print('Вы неверно ввели значение! Попробуйте ввести продукт еще раз.')
        continue

    while True:
        answer = input('Хотите добавить еще товаров?(да/нет): ').upper()
        if answer == 'ДА':
            again = True
            break
        elif answer == 'НЕТ':
            again = False
            break
        else:
            continue

analytics = {}
for row in book:
    for k, v in row[1].items():
        if k not in analytics:
            analytics[k] = []
        if v not in analytics[k]:
            analytics[k].append(v)

print(analytics)
