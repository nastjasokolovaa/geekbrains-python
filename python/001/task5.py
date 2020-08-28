revenue = int(input('Введите выручку вашей фирмы: '))
cost = int(input('Введите издержки фирмы: '))

if revenue > cost:
    print('Фирма прибыльна')
    gpm = ((revenue - cost) / revenue) * 100
    print('Рентабельность', gpm)
    employees = int(input('Сколько сотрудников в вашей фирме: '))
    profit = revenue - cost
    print('На одного сотрудника приходится', (profit/employees))
else:
    print('Фирма убыточна')
