try:
    total_value = float(input("Enter total value: "))
    value = float(input("Enter value: "))
    print('That is '+str(float(value/total_value * 100))+'%')
except ZeroDivisionError:
    print("Your total value cannot be zero.")
except ZeroDivisionError:
    print("You need to enter a number. Run the program again")