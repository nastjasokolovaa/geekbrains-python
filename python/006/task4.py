# Реализуйте базовый класс Car. У данного класса должны быть следующие атрибуты:
# speed, color, name, is_police (булево).А также методы: go, stop, turn(direction),
# которые должны сообщать, что машина поехала, остановилась, повернула (куда).
# Опишите несколько дочерних классов: TownCar, SportCar, WorkCar, PoliceCar.
# Добавьте в базовый класс метод show_speed, который должен показывать текущую скорость автомобиля.
# Для классов TownCar и WorkCar переопределите метод show_speed.
# При значении скорости свыше 60 (TownCar) и 40 (WorkCar) должно выводиться сообщение о превышении скорости.
# Создайте экземпляры классов, передайте значения атрибутов.
# Выполните доступ к атрибутам, выведите результат. Выполните вызов методов и также покажите результат.

class Car:
    def __init__(self, speed, color, name, is_police):
        self.speed = speed
        self.color = color
        self.name = name
        self.is_police = bool(is_police)

    def start(self):
        print('Car started')

    def turn_right(self):
        print('Car turned right')

    def turn_left(self):
        print('Car turned left')

    def stop(self):
        print('Car stopped')

    def show_speed(self, speed):
        print('Current speed:', speed)


class TownCar(Car):
    def show_speed(self, speed):
        if speed > 60:
            print('Over speed!')
        super().show_speed(speed)


class SportCar(Car):
    pass


class WorkCar(Car):
    def show_speed(self, speed):
        if speed > 40:
            print('Over speed!')
        super().show_speed(speed)


class PoliceCar(Car):
    pass


new_town_car = TownCar('50', 'grey', 'Ford Focus', False)
print(f'Car is police: {new_town_car.is_police}, Car model: {new_town_car.name}, '
      f'Color: {new_town_car.color}, Speed: {new_town_car.speed}')

new_town_car.start()
new_town_car.show_speed(70)
new_town_car.turn_right()
new_town_car.stop()

new_work_car = WorkCar('35', 'blue', 'Volkswagen Polo', False)
print(f'Car is police {new_work_car.is_police}, Car model: {new_work_car.name}, '
      f'Color: {new_work_car.color}, Speed: {new_work_car.speed}')
new_work_car.start()
new_work_car.show_speed(54)
new_work_car.turn_left()
new_work_car.stop()

new_sport_car = SportCar('100', 'red', 'Lamborgini Aventador', False)
print(f'Car is police {new_sport_car.is_police}, Car model: {new_sport_car.name}, '
      f'Color: {new_sport_car.color}, Speed: {new_sport_car.speed}')
new_sport_car.start()
new_sport_car.show_speed(130)
new_sport_car.turn_right()
new_sport_car.stop()

new_police_car = PoliceCar('60', 'dark blue', 'Skoda Octavia', True)
print(f'Car is police {new_police_car.is_police}, Car model: {new_police_car.name}, '
      f'Color: {new_police_car.color}, Speed: {new_police_car.speed}')
new_police_car.start()
new_police_car.show_speed(80)
new_police_car.turn_left()
new_police_car.turn_right()
new_police_car.stop()
