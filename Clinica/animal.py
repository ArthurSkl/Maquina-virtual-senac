class Animal : 
    def __init__(self,name,color,peso) : 
        self.name = name 
        self.color = color
        self.peso = peso  

    def mover (self): 
        print(f"{self.name} ANDOU   ") 


class Cachorro(Animal):
    def latir (self): 
        print("AU AU AU ") 
    pass 
class Pato(Animal):
    def falar (self): 
        print("quac quac quac") 
    pass 
class rato(Animal):
    pass

a1 = Animal("bilu","Caramelo",100)
a1.mover() 

dog1 = Cachorro("TOTO","BLACK",100) 
dog1.mover() 
dog1.latir()

a2 = Pato ("pato donald","Branco",100)
a2.falar()

class Peixe(Animal): 
    def __init__(self, name, color, peso ):
        super().__init__(name, color) 
        self.peso = peso 

    
    def get_dados(self):
        print(f"o peso do peixe é {self.peso}") 

a3=(Peixe("dsadsa","branco",122))
a3.get_dados()
