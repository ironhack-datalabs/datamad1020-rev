
# Soldier


class Soldier:

    def __init__(self, health, strength):
        self.health = health
        self.strength = strength
    
    
    def attack(self):
        return self.strength
    
    
    def receiveDamage(self, the_damage):
        self.health = self.health - the_damage
        #docstring 
    

# Viking

class Viking(Soldier):

    def __init__(self, name, health, strength):
        super().__init__(health, strength) 
        self.name = name                           


    def receiveDamage(self, the_damage):
        self.health = self.health - the_damage
        if self.health > 0:
            return f'{self.name} has received {the_damage} points of damage'
        else:
            return f"{self.name} has died in act of combat"
        #docstring 

    def battleCry(self):
        return "Odin Owns You All!"
    
# Saxon


class Saxon(Soldier):

    def receiveDamage(self, the_damage):
        self.health = self.health - the_damage
        if self.health > 0:
            return f'A Saxon has received {the_damage} points of damage'
        else:
            return f"A Saxon has died in combat"
        #docstring 


    pass

# War


class War:
    pass
