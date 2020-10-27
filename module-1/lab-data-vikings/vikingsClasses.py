
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
    def __init__(self, name, health , strength):
        super().__init__(health,strength)   
        self.name = name
        
    def receiveDamage(self, damage):
        self.health = self.health - damage
        if self.health <= 0:
            return f"{self.name} has died in act of combat"
        else:
            return f"{self.name} has received {damage} points of damage"
    
    def battleCry(self):
        return "Odin Owns You All!"
    

# Saxon


class Saxon (Soldier):
    def __init__(self, health, strength):
        super().__init__(health, strength)

    def receiveDamage(self, damage):
        self.health = self.health - damage
        if(self.health <= 0):
            return "A Saxon has died in combat"
        else:
            return f"A Saxon has received {damage} points of damage"
    

# War

import random
class War:
    def __init__(self):
        self.vikingArmy = []
        self.saxonArmy = []

    def addViking(self, Viking):
        return self.vikingArmy.append(Viking)

    def addSaxon(self, saxon):
        return self.saxonArmy.append(saxon)

    def vikingAttack(self):
        saxon = random.choice(self.saxonArmy)
        viking = random.choice(self.vikingArmy)
        if (viking.strength >= saxon.health):
            self.saxonArmy.remove(saxon)
        return saxon.receiveDamage(viking.strength)

    def saxonAttack(self):
        saxon = random.choice(self.saxonArmy)
        viking = random.choice(self.vikingArmy)
        if (saxon.strength >= viking.health):
            self.vikingArmy.remove(viking)
        return viking.receiveDamage(saxon.strength)
    
    def showStatus(self):
        if len(self.saxonArmy) == 0:
            return "Vikings have won the war of the century!"
        elif len(self.vikingArmy) == 0:
            return "Saxons have fought for their lives and survive another day..."
        else:
            return "Vikings and Saxons are still in the thick of battle."


    
