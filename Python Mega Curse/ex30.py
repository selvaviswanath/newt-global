pw = input()

if(len(pw)>7):
    print("Great password there!")
elif(len(pw)==7):
    print("Password is OK, but not too strong")
else:
    print("Your password is weak.")
