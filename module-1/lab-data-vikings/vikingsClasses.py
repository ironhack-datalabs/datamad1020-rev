
# Soldier


class Soldier:

    def __init__(self,health,strength): #lo primero que hacemos es establecer los atributos que queremos que tengan nuestros soldados(instance)

        self.health = health #el self identifica directamente los instances

        self.strength = strength

    def attack(self): #entre () ponemos self ya que aunque no necesitemos ninguna variable, tenemos que identificar a las instances

        return self.strength

    def receiveDamage(self,damage): #en este caso si que ponemos self y la varibale damage, ya que va a tener un impacto. En esete caso sobre la salud del soldado

        self.health = self.health - damage

# Viking


class Viking(Soldier): #heredamos Soldier para no tener que repetir los mismos pasos. IMPORTANTÍSIMO PONER EL PADRE ENTRE PARÉNTESIS!!!

    def __init__ (self,name, health, strength): #al igual que antes, entre () ponemos los atributos que queremos tener, tanto los nuevos como los heredados

        self.name = name #este sería un atributo nuevo
    
        super(). __init__ (health, strength) #con super heredamos los atributos del padre (Soldier) que hemos incluido en def __init__ () porque si no no los podemoso utilizar

        
    def receiveDamage(self,damage): #en este caso hemos modificado el método receiveDamage, general para los Soldier, para que de un resultado específico de Vikings

        self.health = self.health - damage

        if self.health > 0:
            
            return f"{self.name} has received {damage} points of damage"
  
        else:

            return f"{self.name} has died in act of combat"
    
    def battleCry(self): #este es un método nuevo que incluimos

        return "Odin Owns You All"
    

# Saxon (lo mismo que hemos hecho con vikings aplicaría a este caso)


class Saxon(Soldier):

    def __int__ (self,health,strength):

        super.__int__(health,strength)
    
    def receiveDamage(self,damage):

        self.health = self.health - damage

        if self.health > 0:

            return f"A Saxon has received {damage} points of damage"

        else:

            return "A Saxon has died in combat"
    

# War


import random

class War:
    
    def __init__ (self): #IMOORTANTE que aunque no haya atributos metamos self en (), porque si no no va a funcionar nada !!!
                         #El self lo vamos a tener que utilizar siempre para identificar las instancias 
        self.vikingArmy = [] #aquí, para crear una lista vacía no bastaría con hacer vikingArmy = [], tenemos que identificarlo con selvikingArmy = []
        self.saxonArmy = []
    
    def addViking(self,Viking): #creamos el método que nos genera los vikingos que van a formar parte del ejército. Lo mismo hacemos con los saxones
        
        self.vikingArmy.append(Viking)

    def addSaxon(self,Saxon):
        
        self.saxonArmy.append(Saxon)

        
        
    def vikingAttack(self): #En estas líneas creamos el ataque de los vikingos. El ataque se hace de manera aleatoria, y como podemos ver, utilizamos el random
                            #choice en SELF.SAXONARMY. Importante el Self en todas partes que necesitamos nombrar
        
        saxon = random.choice(self.saxonArmy)
        
        viking = random.choice(self.vikingArmy)
        
        result = saxon.receiveDamage(viking.attack())
        
        if result == "A saxon has died in combat"

            self.saxonArmy.remove(saxon)

        return result
            
            
        
    def saxonAttack(self):
        
        saxon = random.choice(self.saxonArmy)
        
        viking = random.choice(self.vikingArmy)
        
        result = viking.receiveDamage(saxon.attack())
        
        if result = f"{viking.name} has dies in act of combat"
            
            self.vikingArmy.remove(viking)

        return result
            
        


    def showStatus(self):
        
        if not self.saxonArmy: #para ver si una lista está vacía (todos los soldados muertos), hay varias formas, pero esta me ha parecido muy limpia y sencilla
                               #en vez de entrar en condicionales, vale con ver si "existe" la lista o no utilizando not (nombre de lista) 
            
            return "Vikings have won the war of the century!"
        
        elif not self.vikingArmy:
            
            return "Saxons have fought for their lives and survive another day..."
        
        else: 
            
            return "Vikings and Saxons are still in the thick of battle."