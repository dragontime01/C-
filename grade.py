s = int(input("Enter your score: "))
a = 1

if 50 <= s < 55:
    print(f"Your grade is {a}")
elif 55 <= s < 60:
    print(f"Your grade is {a+0.5}")
elif 60 <= s < 65:
    print(f"Your grade is {a+1}")
elif 65 <= s < 70:
    print(f"Your grade is {a+1.5}")
elif 70 <= s < 75:
    print(f"Your grade is {a+2}")
elif 75 <= s < 80:
    print(f"Your grade is {a+2.5}")
elif s >= 80:
    print(f"Your grade is {a+3}")

else:
    print("Your score is 0")
