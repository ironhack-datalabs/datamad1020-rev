
# Soldier


class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength
    
    def attack(self):
        return self.strength
    
    def receiveDamage(self, the_demage):
        self.health -= the_demage





# Viking


class Viking (Soldier):
    def __init__(self, name, health, strength):
        super().__init__(health, strength)
        self.name = name
    
    # El attack method se hereda directamente de la clase soldier (padre)
    # y como no va a cambiar para los vikings no necesitamos reemplazarla

    def receiveDamage(self, the_demage):
        self.health -= the_demage

        
        if self.health >= the_demage:
            return (f'{self.name} has received {the_demage} points of damage')     #OJO!! DOS FALLOS !!!

        elif self.health < the_demage:
            return (f'{self.name} has died in act of combat')


    def battleCry(self):
        return "Odin Owns You All!"




    

# Saxon


class Saxon (Soldier):
    # def __inti__(self, health, strength) No hace falta definir la funcion de Saxon porque es igual que la de soldier
    # por eso la heredamos

# El attack method se hereda directamente de la clase soldier (padre)
# y como no va a cambiar para los vikings no necesitamos reemplazarla

    def receiveDamage(self, the_demage):
        self.health -= the_demage

        if self.health > the_demage:
            return (f'A Saxon has received {the_demage} points of damage')
        elif self.health < the_demage:
            return (f'A Saxon has died in combat')





# War

import numpy as np
class War:
    vikingArmy = np.empty(1)
    saxonArmy = np.empty(1)

    def addViking(self, Viking):
        vikingArmy += 1

    def addSaxon(self, Saxon):
        saxonArmy += 1
    
    def vikingAttack(self):
        Saxon.receiveDamage = self.strength.Viking

        

