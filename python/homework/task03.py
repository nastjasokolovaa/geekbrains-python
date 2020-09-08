# Необходимо написать программу,
# которая выводит строку с числами от 1 до 100, разделёнными «, » со следующими условиями:
#
# Если число делится нацело на 3, вместо числа выводится «Fizz».
# Если число делится нацело на 5, вместо числа выводится «Buzz».
# Если число делится нацело и на 3 и на 5, вместо числа выводится «FizzBuzz».
# Во всех остальных случаях выводится само число.


for i in range(1, 101):
    ok = False
    if i % 3 == 0:
        ok = True
        print('Fizz', end='')
    if i % 5 == 0:
        ok = True
        print('Buzz', end='')

    if not ok:
        print(i, end='')

    if i != 100:
        print(',', end='')

    # for i in range(1, 101):
    #     if i == 100:
    #         print('Buzz')
    #     elif i % 3 == 0 and i % 5 == 0:
    #         print('FizzBuzz', end=',')
    #     elif i % 3 == 0:
    #         print('Fizz', end=',')
    #     elif i % 5 == 0:
    #         print('Buzz', end=',')
    #     else:
    #         print(i, end=',')
