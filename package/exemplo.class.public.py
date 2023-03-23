class People: 
    def __init__(self,nome,idade):
        self.nome = nome 
        self.idade = idade 

pes1 = People("Luiz",18)
print(pes1.nome,pes1.idade)
pes1.nome = "THAIS"
pes1.idade = 19 
print(f"agora a PES Vale : {pes1.nome} e {pes1.idade}")