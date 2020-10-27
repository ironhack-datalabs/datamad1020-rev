
# Soldier


class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength

    def attack(self):
        return self.strength

    def receiveDamage(self, damage):
        return self.health - damage

# Viking


class Viking(Soldier):
    def __init__(self, name, health, strength):
        super().__init__(health, strength)
        self.name = name

    def attack(self):
        return self.strength

    def receiveDamage(self, damage):
        self.health - damage
        if Viking.health > 0:
            return f'{self.name} has received {damage} points of damage.'
        elif Viking.health <= 0:
            return f'{self.name} has died in act of combat.'

    def battleCry(self):
        return "Odin Owns You All!"

# Saxon


class Saxon(Soldier):
    def __init__(self, health, strength):
        super().__init__(health, strength)

    def attack(self):
        return self.strength

    def receiveDamage(self, damage):
        return self.health - damage
        if Saxon.health > 0:
            return f'A Saxon has received {damage} points of damage.'
        if Saxon.healt <= 0:
            return "A Saxon has died in combat."



# War


class War:
    pass
