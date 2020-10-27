import random as rd

class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength

    def attack(self):
        return self.strength

    def receiveDamage(self, damage):
        self.health = self.health - damage
        
class Viking(Soldier):
    def __init__(self, name, health, strength):
        Soldier.__init__(self, health, strength)
        self.name = name
    def receiveDamage(self, damage):
        self.health = self.health - damage
        if self.health > 0:
            return self.name + " received " +  str(damage) + " points of damage"
        else:
            return self.name + " has been brutally killed"
    def battleCry(self):
        return "Long live the Vikings!"
    
class Saxon(Soldier):
    def receiveDamage(self, damage):
        self.health = self.health - damage
        if self.health > 0:
            return "A Saxon has received " +  str(damage) + " points of damage"
        else:
            return "A Saxon has been brutally killed"