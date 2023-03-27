class Pessoa : 
    def __init__(self,nome,telefone,EXp):
        self.nome = nome   
        self.telefone = telefone 
        self.EXp = EXp 
    def falar (self):
        print(f"{self.nome} Falor ")
    def get_nome (self): 
        return self.nome    
    def excluir_n (self):  
        self.nome = None
    def adicionar_n (self):  
        self.nome = input("Digite seu nome ! ")

        


p1 = Pessoa("Alber Roberto ",999999,"Dsadsa")
p1.falar() 

class Veterinario(Pessoa):
    pass 

vet = Veterinario("Joao silva", 556998555,"sadsa")
vet.falar() 
class cliente(Pessoa):
    pass

cli = cliente ("APARECIDO SOUZA",5546561,"dsadas")