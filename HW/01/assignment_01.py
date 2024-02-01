# Name: Folorunsho Atanda
# Class: Data 602
# Homework: 01


# Q1 Fix all the syntax and logical errors in the given source code 
# add comments to explain your reasoning

# This program gets three test scores and displays their average.  It congratulates the user if the 
# average is a high score. The high score variable holds the value that is considered a high score.

high_score = 95
 
# Get the test scores.
test1 = input('Enter the score for test 1: ')
test2 = input('Enter the score for test 2: ')
test3 = input('Enter the score for test 3: ')

# Calculate the average test score.
average = (float(test1) + float(test2) + float(test3)) / 3
# Print the average.
print('The average score is', average)

# If the average is a high score,
# congratulate the user.
if average >= high_score:
    print('Congratulations!')
print('That is a great average!')

# Q2
# The area of a rectangle is the rectangle’s length times its width. Write a program that asks for the length and width of two rectangles and prints to the user the area of both rectangles. 
print('\n')
# Request length and width of rectangle one
length1 = float(input('Enter the lenght of rectangle one: '))
width1 = float(input('Enter the width of rectangle one: '))

# Request lenght and width of rectangle two
length2 = float(input('Enter the lenght of rectangle two: '))
width2 = float(input('Enter the width of rectangle two: '))

# print the area of rectangle one and rectangle two
print('The area of rectangle one is: ' + str(length1 * width1))
print('The area of rectangle two is: ' + str(length2 * width2))

# Q3 
# Ask a user to enter their first name and their age and assign it to the variables name and age. 
# The variable name should be a string and the variable age should be an int.
print('\n')
name = input('What is your first name: ')
age = int(input('How old are you? '))

#U sing the variables name and age, print a message to the user stating something along the lines of:
# "Happy birthday, name!  You are age years old today!"
print('Happy Birthday, ' + name + '! ' + 'You are ' + str(age) + ' years old today!')

