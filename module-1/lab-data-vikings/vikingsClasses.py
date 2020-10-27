import random

# Soldier

class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength

    def attack(self):
        return self.strength
    
    def receiveDamage(self, damage): 
        self.health -= damage

# Viking

class Viking(Soldier):
    def __init__(self, name, health, strength):
        self.name = name
        super().__init__(health,strength)
        print(health,name,strength)
 
    def receiveDamage(self, damage):
       self.health -= damage

       if self.health > 0:
            return self.name + " has received " + str(damage) + " points of damage"
       else:
            return self.name + " has died in act of combat"
    
    def battleCry(self):
        return "Odin Owns You All!"

# Saxon

class Saxon(Soldier):
    def __init__(self,health,strength):
        super().__init__(health,strength)
        print(health,strength)

    def receiveDamage(self, damage):
        super().receiveDamage(damage)
        if self.health > 0:
            return self.name + " has received " + str(damage) + " points of damage"
        else:
            return self.name + " has died in act of combat"
    

# War


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
        saxon_result = randS.receiveDamage(randV.strength)

        if randS.health <= 0:
           self.saxonArmy.remove(randS)
        return saxon_result
        
    
    def saxonAttack(self):
        randV = random.choice(self.vikingArmy)
        randS = random.choice(self.saxonArmy)
        viking_result = randV.receiveDamage(randS.strength)

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
    