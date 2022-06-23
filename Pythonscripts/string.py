import os
t_w=os.get_terminal_size().columns

given_string=input("Enter your string")
print(given_string.center(t_w).title())
