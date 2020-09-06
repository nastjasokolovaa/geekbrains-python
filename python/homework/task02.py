# записать в res все простые числа от 1 до n.
n = 25
res = []
primes = [2, 3, 5, 7]

for i in range(1, n + 1):
    prime = True
    if i in primes:
        res.append(i)

    for m in primes:
        if i % m == 0:
            prime = False

    if prime:
        res.append(i)

print(res)
# if i % 2 != 0 and i % 3 != 0 and i % 5 != 0 and i % 7 != 0 or (i == 2 or i == 3 or i == 5 or i == 7):
