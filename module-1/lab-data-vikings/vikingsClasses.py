import random

# Soldier

class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength
    def attack(self):
        return self.strength
    def receiveDamage(self, the_damage):
        self.health -= the_damage

# Viking
class Viking(Soldier):
    def __init__(self, name, health, strength):
        super().__init__(health, strength)
        self.name = name
    def receiveDamage(self,the_damage):
        self.health -= the_damage
        if self.health > 0:
            return(f'{self.name} has received {the_damage} points of damage')
        else:
            return(f'{self.name} has died in act of combat')
    def battleCry(self):
        return(f'Odin Owns You All!')

# Saxon
class Saxon(Soldier):
    def __init__(self, health, strength):
        super().__init__(health, strength)
    def receiveDamage(self, the_damage):
        self.health -= the_damage
        if self.health > 0:
            return(f'A Saxon has received {the_damage} points of damage')
        else:
            return(f'A Saxon has died in combat')

# War
class War:
    pass