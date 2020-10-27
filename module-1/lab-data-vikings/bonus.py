from vikingsClasses.py import *

class War:
    def __init__(self):
       self.vikingArmy = []
       self.saxonArmy  = []
    
    def addViking(self,viking):
        self.vikingArmy.append(viking)
        

    def addSaxon(self,saxon):
        self.saxonArmy.append(saxon)
        
    
    def vikingAttack(self):
        randV = random.choice(self.vikingArmy)
        randS = random.choice(self.saxonArmy)
        saxon_result = randS.receiveDamage(randV.attack())

        if randS.health <= 0:
           self.saxonArmy.remove(randS)
        return saxon_result
        
    
    def saxonAttack(self):
        randV = random.choice(self.vikingArmy)
        randS = random.choice(self.saxonArmy)
        viking_result = randS.receiveDamage(randV.attack())
        if randV.health <= 0:
            self.vikingArmy.remove(randV)
        return viking_result
    
    def showStatus(self):
        if len(self.saxonArmy) == 0:
            return "Vikings have won the war of the century!"
        elif len(self.vikingArmy) == 0:
            return "Saxons have fought for their lives and survive another day..."
        else:
            return "Vikings and Saxons are still in the thick of battle."
    

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
                print(f"soldier number {s}")
                while True:
                    try:
                        saxonHealth = int(input("Introduce the soldier's health choosing a number (1-100):"))
                        saxonStrength = int(input("Introduce the soldier's strength choosing a number (1-100):"))
                        if checkInvalidValueError(saxonHealth) == False or checkInvalidValueError(saxonStrength) == False:
                            raise InvalidValueError

                        break
                    except InvalidValueError:
                        print("Please introduce a number between 1 and 100")
                    except ValueError:
                        print("The input must be an integer.Please try again.")
            
                    saxon = Saxon(saxonHealth, saxonStrength)
                    war.addSaxon(saxon)
            break
        elif attributes[0] == "n" or attributes[0] == "N":
            for s in range(0,saxonsNumber):
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
                print(f"soldier number {v}")
                while True:
                    try:
                        vikingName = input("Introduce the soldier's name:")
                        vikingHealth = int(input("Introduce the soldier's health choosing a number (1-100):"))
                        vikingStrength = int(input("Introduce the soldier's strength choosing a number (1-100):"))
                        if checkInvalidValueError(vikingHealth) == False or checkInvalidValueError(vikingStrength) == False:
                            raise InvalidValueError

                        break
                    except InvalidValueError:
                        print("Please introduce a number between 1 and 100")
                    except ValueError:
                        print("The input must be an integer.Please try again.")
                viking = Viking(vikingName, vikingHealth, vikingStrength)
                war.addViking(viking)
            break
        elif attributes[0] == "n" or attributes[0] == "N":
            for v in range(0,vikingsNumber):
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
    print(war.saxonAttack())
    print(war.vikingAttack())
  except:
    print(war.showStatus())
  else:
    print(war.showStatus())