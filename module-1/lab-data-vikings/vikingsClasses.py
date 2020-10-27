
# Soldier
### Soldier
import random


class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength
    def attack(self):
        return self.strength

    def receiveDamage(self,damage):
        self.health -= damage
        

# Viking


class Viking(Soldier):
    def __init__(self, name,health,strength):
        super().__init__(health,strength)
        self.name = name 
    
   

    def receiveDamage(self,damage):
        self.health-=damage
        if self.health <= 0:
            return f'{self.name} has died in act of combat'
        else:
            return f'{self.name} has received {damage} points of damage'
    def battleCry(self):
        return f'Odin Owns You All!'



# Saxon


class Saxon(Soldier):
    def __init__(self, health, strength):
        super().__init__(health,strength)

    def receiveDamage(self,damage):
        self.health -= damage
        if self.health <= 0:
            return f'A Saxon has died in combat'
        else:
            return f'A Saxon has received {damage} points of damage'


# War

  
class War:
    
    def __init__(self):
        self.vikingArmy = []
        self.saxonArmy = []


    def addViking(self, viking):
        self.vikingArmy.append(viking)


    def addSaxon(self, saxon):
        self.saxonArmy.append(saxon)


    def vikingAttack(self):
        saxon_index = random.choice(range(0, len(self.saxonArmy))) 
        saxon = self.saxonArmy[saxon_index]
        viking = random.choice(self.vikingArmy)
        saxon.receiveDamage(viking.strength)
        if saxon.health <= 0:
            self.saxonArmy.pop(saxon_index)
            return f'A Saxon has died in combat'


    def saxonAttack(self):
        viking_index = random.choice(range(0,len(self.vikingArmy)))
        
        viking = self.vikingArmy[viking_index]
        saxon = random.choice(self.saxonArmy)
        viking.receiveDamage(saxon.strength)
        if viking.health <= 0:
            self.vikingArmy.pop(viking_index)
        return f'{viking.name} has received {saxon.strength} points of damage'
    
    def showStatus(self):
        if len(self.vikingArmy) == 0:
            return f'Saxons have fought for their lives and survive another day...'
        if len(self.saxonArmy) == 0:
            return f'Vikings have won the war of the century!'
        return f'Vikings and Saxons are still in the thick of battle.'



    


    

