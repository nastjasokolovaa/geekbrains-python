# Создать класс TrafficLight (светофор) и определить у него один атрибут color (цвет) и метод running (запуск).
# Атрибут реализовать как приватный.В рамках метода реализовать переключение светофора в режимы:
# красный, желтый, зеленый.Продолжительность первого состояния (красный) составляет 7 секунд, второго (желтый) —
# 2 секунды, третьего (зеленый) — на ваше усмотрение.Переключение между режимами должно осуществляться только
# в указанном порядке (красный, желтый, зеленый). Проверить работу примера, создав экземпляр и вызвав описанный метод.

import time


class TrafficLight:
    def __init__(self):
        self.__color = ''

    def running(self):
        self.__color = 'Red'
        print(self.__color)
        time.sleep(7)
        self.__color = 'Yellow'
        print(self.__color)
        time.sleep(2)
        self.__color = 'Green'
        print(self.__color)
        time.sleep(5)


new_traffic_light = TrafficLight()
new_traffic_light.running()
