time = int(input('Введите время в секундах:'))

hour = time // 3600
a = time % 3600
minute = a // 60
second = a % 60
print(f'{hour:02}:{minute:02}:{second:02}')
