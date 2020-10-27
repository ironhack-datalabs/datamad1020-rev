from vikingsClasses import Soldier, Viking, Saxon, War
import random
#Battle
class InvalidValueError(Exception):
    '''Wrong input answers. Please check the instructions.'''
    pass
def checkInvalidValueError(value):
    return value > 0 and value <= 100

war = War()

while True:

    try:
        saxonsNumber = int(input("The number of soldiers of the Saxon army is:"))
        break
    except ValueError:
        print("The input must be an integer.Please try again.")
    
while True:
    try:
        attributes = input("Do you want to choose (introducing the number) the soldiers' health and strength? (y/N)")
        if attributes[0] == "y" or attributes[0] == "Y":
            for s in range(0,saxonsNumber):
                print(f"saxons number {s}")
                while True:
                    try:
                        saxonHealth = int(input("Introduce the saxon's health choosing a number (1-100):"))
                        saxonStrength = int(input("Introduce the saxon's strength choosing a number (1-100):"))
                        if checkInvalidValueError(saxonHealth) == False or checkInvalidValueError(saxonStrength) == False:
                            raise InvalidValueError
                        saxon = Saxon(saxonHealth, saxonStrength)
                        war.addSaxon(saxon)
                        break
                    except InvalidValueError:
                        print("Please introduce a number between 1 and 100")
                    except ValueError:
                        print("The input must be an integer.Please try again.")
            break
        elif attributes[0] == "n" or attributes[0] == "N":
            for s in range(1,saxonsNumber + 1):
                saxon = Saxon(random.randint(1,100), random.randint(1,100))
                war.addSaxon(saxon)
            break
        else:
            raise InvalidValueError
    except InvalidValueError:
        print("Wrong input answer, please check the instructions")

while True:
    try:
        vikingsNumber = int(input("The Vikings army is composed by these number of soldiers:"))
        break
    except ValueError:
        print("The input must be an integer.Please try again.")
while True:
    try:
        attributes = input("Do you want to choose (introducing the number) the soldiers' name, health and strength? (y/N)")
        if attributes[0] == "y" or attributes[0] == "Y":
            for v in range(0,vikingsNumber):
                print(f"vikings number {v}")
                while True:
                    try:
                        vikingName = input("Introduce the viking's name:")
                        vikingHealth = int(input("Introduce the viking's health choosing a number (1-100):"))
                        vikingStrength = int(input("Introduce the viking's strength choosing a number (1-100):"))
                        if checkInvalidValueError(vikingHealth) == False or checkInvalidValueError(vikingStrength) == False:
                            raise InvalidValueError
                        
                        viking = Viking(vikingName, vikingHealth, vikingStrength)
                        war.addViking(viking)
                        break
                    except InvalidValueError:
                        print("Please introduce a number between 1 and 100")
                    except ValueError:
                        print("The input must be an integer.Please try again.")
            break
        elif attributes[0] == "n" or attributes[0] == "N":
            for v in range(1 ,vikingsNumber + 1):
                viking = Viking (f"Viking {v}", random.randint(1,100), random.randint(1,100))
                war.addViking(viking)
            break
        else:
            raise InvalidValueError
    except InvalidValueError:
        print("Wrong input answer, please check the instructions")

print()

while len(war.saxonArmy) != 0 and len(war.vikingArmy) != 0 :
    try:
        print("Saxon attack :", war.saxonAttack())
        print("Viking attack :", war.vikingAttack())
    except:
        print(war.showStatus())
    else:
        print(war.showStatus())