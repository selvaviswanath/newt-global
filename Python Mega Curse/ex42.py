def strength(password):
    if((len(password)>=8) and (any(x.isupper() for x in password)) and (any(x.isnumeric() for x in password))):
        return "Strong Password"
    else:
        "Weak Password"
