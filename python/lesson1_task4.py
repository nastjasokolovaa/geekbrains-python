num = input('Введите целое положительное число:')
if not num.isnumeric():
    print('Это не число')
    exit(-1)

# первое решение.
i = 0
max_n = int(num[0])
while i < len(num):
    n = int(num[i])
    if n > max_n:
        max_n = n
    i += 1
print('#1 Max:', max_n)

# второе решение.
n = int(num)
max_n = n % 10
while n != 0:
    cur = n % 10
    if max_n < cur:
        max_n = cur
    n = (n - (n % 10)) / 10
print('#2 Max:', int(max_n))
