try:
    total_value = float(input("Enter total value: "))
    value = float(input("Enter value: "))
    print('That is '+str(float(value/total_value * 100))+'%')
except:
    print("You need to enter a number. Run the program again")