class People: 
    def __init__(self,nome,idade):
        self.__nome = nome 
        self.idade = idade 

    def get_nome(self): 

        return self.__nome
    
    def set_nome(self,name):
        
        self.__nome = name 

pes1 = People("Luiz",18)

print(pes1.get_nome,pes1.idade)

pes1.set_nome("dsadsada ")

print(pes1.get_nome())

pes1.idade = 19 

print(f"agora a PES Vale : {pes1.get_nome} e {pes1.idade}")