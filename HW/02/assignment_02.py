# Name: Folorunsho Atanda
# Class: Data 602
# Homework: 02

# Q1 What will the following code display?
print('Question 1')
numbers = [1, 2, 3, 4, 5]
print(numbers[1:-5])
print('This will print an empty list')

# To print the whole list
print('The whole list: {}'.format(numbers[0:5]))


# Q2 Design a program that asks the user to enter a store's sales for each day of the week.
# The amounts should be stored in a list. Use a loop to calculate the total sales for the week
# and display the result

print('\n')
print('Question 2')
sales_list = []
days_of_the_week = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
sales_sum = 0

# store sales for each day
for day in days_of_the_week:
    sales = int(input('Enter sales for {}:'.format(day)))
    sales_list.append(sales)
    sales_sum = sales_sum + sales
    
# print total sales
print('Total sales is ', str(sales_sum))


# Q3 Create a list with at least 5 places you'd like to travel to. Make surethe list isn't in alphabetical order

print('\n')
print('Question 3')
places = ['Maldives', 'Vietnam', 'Amsterdam', 'Germany', 'Argentina']

# Print list
print('List of places: ', places)

# Sort list
# copy list so as not to modify original list
sorted_list = places
sorted_list.sort()
print('List of sorted places: ', sorted_list)

# set reverse parameter to True
# copy list so as not to modify
reverse_sorted_list = places
reverse_sorted_list.sort(reverse = True)
print('List of sorted places in reverse order (descending order): ', reverse_sorted_list)


# Q4 Write a program that creates a dictionary containing course numbers and the room
# numbers of the rooms where the courses meet. The program should also create a
# dictionary containing course numbers and the names of the instructors that teach each
# course. After that, the program should let the user enter a course number, then it should
#display the course’s room number, instructor, and meeting time.

print('\n')
print('Question 4')

# list of cources
course_list = ['Data 602', 'Data 605', 'Data 607', 'Data 606']

# Course room dictionary
course_room = {'Data 602': 'Rm 352',
               'Data 605': 'Rm 221',
               'Data 607': 'Rm 330',
               'Data 606': 'Rm 101'}

# Course professor
course_instructor = {'Data 602': 'Prof Schettini',
                     'Data 605': 'Prof Fulton',
                     'Data 607': 'Prof Kowalchuk',
                     'Data 606': 'Prof Bryer'}

# Course meeting time
course_meeting_time = {'Data 602': 'Tuesday 6:00pm',
                       'Data 605': 'Thursday 6:00pm',
                       'Data 607': 'Wednesday 7:00pm',
                       'Data 606': 'Wednseday 8:00pm'}

# course information
course = input('Choose course from list {}: '.format(course_list))

if course in course_list:
    print('The course room is: {}'.format(course_room[course]))
    print('The course instructor is: {}'.format(course_instructor[course]))
    print('The course meeting time is: {}'.format(course_meeting_time[course]))
else:
    print('Course is not part of list!!')
    

# Q5 Write a program that keeps names and email addresses in a
# dictionary as key-value pairs.

print('\n')
print('Question 5')
client_info = {'Mr Johnson': 'dave.johnson@gmail.com',
               'Mr Diaz': 'peter.diaz62@yahoo.com',
               'Miss Ogun': 'ogunbami_26@rocketmail.com'}

# look up a persons email
client = input('Enter client to look up: ')
if client in client_info:
    print('{client}\'s email is: {email}'.format(client = client, email = client_info[client]))
else:
    print('There is no info for {}'.format(client))
    
# add a new name and email address
print('\n')
client = input('Enter new client: ')
if client not in client_info:
    email = input('Enter client email: ')
    client_info[client] = email
    print(client_info)
else:
    print('Info for {} already exists'.format(client))

# changing an existing email address
print('\n')
client = input('Enter client who\'s email to update: ')
email = input('Enter new email address:' )
client_info[client] = email
print(client_info)

# delete an exiting name
print('\n')
client = input('Enter client to delete: ')
if client in client_info:
    del client_info[client]
    print(client_info)
else:
    print('Client info does not exist')
