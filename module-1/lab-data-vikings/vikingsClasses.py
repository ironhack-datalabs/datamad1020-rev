
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
        super().__init__(health, strength)

        self.name = name
         
    def receiveDamage(self, damage):
        super().receiveDamage(damage)
        self.health = self.health - damage
        if self.health <= 0:
        
            return(f'{self.name} has died in act of combat')
        else:
            return(f'{self.name} has recived {damage} point of damage')


    def battleCry(self):
        return 'Odin Owns You All!'
    

# Saxon


class Saxon(Soldier):
    def __init__(self, health, strength):
        super().__init__(health, strength)

    def receiveDamage(self, damage):
        self.health = self.health - damage
        if self.health > 0:
            return f'A Saxon has received {damage} points of damage'
        else:
            return f'A Saxon has died in combat'

    

# War


class War:
    pass
