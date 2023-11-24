
def water_state(temperature):
    FREEZING_POINT = 0
    BOILING_POINT = 100
    if temperature <= 0:
        return "Solid"
    elif 0 < temperature < 100:
        return "Liquid"
    else:
        return "Gas"
