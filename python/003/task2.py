# Реализовать функцию, принимающую несколько параметров, описывающих данные пользователя:
# имя, фамилия, год рождения, город проживания, email, телефон.
# Функция должна принимать параметры как именованные аргументы.
# Реализовать вывод данных о пользователе одной строкой.


def person(name, email, phone, birth_year, surname='', city='Москва'):
    print(f'{name.capitalize()} {surname.capitalize()}, '
          f'год рождения: {birth_year}, город проживания: {city}, {email}, {phone}')


person(email='ggg@gmail.com', name='Анастасия', phone=89995556789, birth_year=1996)
