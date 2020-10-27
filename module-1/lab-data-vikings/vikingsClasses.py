
import random

# Soldier


class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength

    def attack(self):
        return self.strength

    def receiveDamage(self, damage):
        self.health = self.health - damage

# Viking

class Viking(Soldier):
    def __init__(self, name, health, strength):
        super().__init__(health,strength)
        self.name = name
    
    def receiveDamage(self, damage):
        self.health = self.health - damage
        if self.health > 0:
            return f'{self.name} has received {damage} points of damage'
        else:
            return f'{self.name} has died in act of combat'

    def battleCry(self):
        return 'Odin Owns You All!'


# Saxon


class Saxon(Soldier):
    def receiveDamage(self, damage):
        self.health = self.health - damage
        if self.health > 0:
            return f'A Saxon has received {damage} points of damage'
        else:
            return f'A Saxon has died in combat'

# War



class War:

    #viking_names = iter(map(lambda x: 'Viking_' + str(x), list(range(0, 500))))
    #saxon_names = iter(map(lambda x: 'Saxon_' + str(x), list(range(0, 500))))



    def __init__(self):

        self.vikingArmy = []
        self.saxonArmy = []



    def addViking(self, new_viking):
        #new_name = next(self.viking_names)
        #new_viking = Viking(new_name, random.randint(50,100), random.randint(10,30))
        self.vikingArmy.append(new_viking)



    def addSaxon(self, new_saxon):
        #name = next(self.saxon_names)
        #new_saxon = Saxon(random.randint(50,100), random.randint(10,30))
        self.saxonArmy.append(new_saxon)

    def vikingAttack(self):
        attacker = random.choice(self.vikingArmy)
        injured = random.choice(self.saxonArmy)
        
        response = injured.receiveDamage(attacker.strength)

        if injured.health <= 0:
            self.saxonArmy.pop(self.saxonArmy.index(injured))
        else:
            pass

        return response





    def saxonAttack(self):
        attacker = random.choice(self.saxonArmy)
        injured = random.choice(self.vikingArmy)
        
        response = injured.receiveDamage(attacker.strength)

        if injured.health <= 0:
            self.vikingArmy.pop(self.vikingArmy.index(injured))
        else:
            pass

        return response


    def showStatus(self):

        if len(self.saxonArmy) == 0:
            return 'Vikings have won the war of the century!'

        elif len(self.vikingArmy) == 0:
            return 'Saxons have fought for their lives and survive another day...'

        else:
            return 'Vikings and Saxons are still in the thick of battle.'




