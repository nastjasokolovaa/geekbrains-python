# Реализовать скрипт, в котором должна быть предусмотрена функция расчета заработной платы сотрудника.
# В расчете необходимо использовать формулу: (выработка в часах * ставка в час) + премия.
# Для выполнения расчета для конкретных значений необходимо запускать скрипт с параметрами.

import modul_for_task

print(modul_for_task.salary(160, 150, 10000))  # production - 160 часов, rate - 150 р/час, bonus - 1000 руб
