
# Soldier
# Class padre para las demás clases.

class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength
    
    def attack(self):
        return self.strength
    
    def receiveDamage(self, damage):
        self.health -= damage

# Viking
# Su clase "padre" será Soldier, le añadimos la propiedad name.

class Viking(Soldier):
    def __init__(self, name, health, strength):
        super().__init__(health, strength) 
        self.name = name

# Se modifica el método receiveDamage con dos if-else condicionales.
    def receiveDamage(self, damage):
        self.health -= damage
        if self.health > 0:
            return f'{self.name} has received {damage} points of damage'
        else:
            return f'{self.name} has died in act of combat'

# Nuevo método para esta clase.
    def battleCry(self):
        return 'Odin Owns You All!'


# Saxon
# Su clase "padre" será Soldier, no se modifica nada.

class Saxon(Soldier):
# Se modifica el método receiveDamage con dos if-else condicionales.
    def receiveDamage(self, damage):
        self.health -= damage
        if self.health > 0:
            return f'A Saxon has received {damage} points of damage'
        else:
            return 'A Saxon has died in combat'


# War

import random
class War:
# Su constructor function no recibe argumentos, además asignamos
# los dos empty arrays.

    def __init__(self):
        self.vikingArmy = []
        self.saxonArmy = []

    def addViking(self, Viking):
        self.vikingArmy.append(Viking)

    def addSaxon(self, Saxon):
        self.saxonArmy.append(Saxon)

    def vikingAttack(self):
        asaxon = random.choice(self.saxonArmy)
        #Saxon.receiveDamage(damage=Viking.attack())
        self.saxonArmy.remove(Saxon)
        return Saxon.receiveDamage(damage=Viking.attack())

    def saxonAttack(self):
        aviking = random.choice(self.vikingArmy)
        #Viking.receiveDamage(damage=Saxon.attack())
        self.vikingArmy.remove(Viking)
        return Viking.receiveDamage(damage=Saxon.attack())

    def showStatus(self): 
        if len(self.saxonArmy) == 0:
            return 'Vikings have won the war of the century!'
        elif len(self.vikingArmy) == 0:
            return 'Saxons have fought for their lives and survive another day...'
        elif len(self.saxonArmy) >= 1 and len(self.vikingArmy) >= 1:
            return 'Vikings and Saxons are still in the thick of battle.'
