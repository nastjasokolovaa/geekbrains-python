# Пользователь вводит строку из нескольких слов, разделённых пробелами.
# Вывести каждое слово с новой строки. Строки необходимо пронумеровать.
# Если в слово длинное, выводить только первые 10 букв в слове.

words = input('Введите предложение: ').split()

for i in range(len(words)):
    print(f'{i + 1}\t{words[i][:10]}')
