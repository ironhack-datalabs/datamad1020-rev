impport random

# Soldier
class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strenght = strength
    def attack(self):
        return f"({self.strenght})"
    def receiveDamage(self,damage):
        self.health = self.health - damage

# Viking

class Viking(Soldier):
    def __init__(self, name, health, strength):
        super().__init__(health, strength)
        self.name = name
    def attack(self):
        super().attack
    def receiveDamage(self, damage):
        super().receiveDamage
        if self.health > 0:
            return ("f({self.name} has received {damage} points of damage)")
        else:
            return ("f({self.name} has died in act of combat)")
    def battleCry(self):
        return ("Odin Owes You All!!")

pass

# Saxon
class Saxon(Soldier):
    def __init__(self, health, strength):
        super().__init__(health, strength)
    def attack(self):
        super().attack
    def receiveDamage(self, damage):
        self.health = self.health - damage
        if self.health > 0:
            return ("f(A Saxon has received {damage} points of damage)")
        else:
            return ("A saxon has died in combat")


# War


class War:
    def __init__(self):
        vikingArmy = []
        saxonArmy = []

    def addViking(self, Viking):
        self.vikingArmy.append(Viking)

    def addSaxon(self, Saxon):
        self.saxonArmy.append(Saxon)
    
    def vikingAttack(self):
        Viking = random.choice(self.vikingArmy)
        Saxon = random.choice(self.vikingArmy)
        if Saxon.health <= 0:
            self.saxonArmy.remove(Saxon)
        return Saxon.receiveDamage(viking.Attack)

    def saxonAttack(self):
        Viking = random.choice(self.vikingArmy)
        Saxon = random.choice(self.vikingArmy)
        if Viking.health <= 0:
            self.vikingArmy.remove(Viking)
        return Viking.receiveDamage(saxon.Attack)

    def showStatus(self):
        if len(self.saxonArmy) == 0:
            return "Vikings have won the war of the century!"
        elif len(self.vikingArmy) == 0:
            return "Saxons have fought for their lives and survive another day..."
        else: 
            return "Vikings and Saxons are still in the thick of battle."

        pass
