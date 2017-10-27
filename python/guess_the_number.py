# This is a guess the number game
import random

random_number = random.randint(1, 20)
print('I am thinking of a number between 1 and 20.')
guess_number = 0
i = 0
while guess_number != random_number:
    i += 1
    print('Take a guess.')
    guess_number = int(input())
    if guess_number < random_number:
        print('Your guess is too low.')
    if guess_number > random_number:
        print('Your guess is too high.')
print('Good job! You guess my number in '+ str(i) +' guesses!')
