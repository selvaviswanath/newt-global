def water_state(temperature):
    if(temperature<=0):
        return "Solid"
    elif(temperature>=100):
        return "Gas"
    else:
        return "Liquid"