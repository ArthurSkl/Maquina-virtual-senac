class Estudante:

    def __init__(self,nome,idade,nota):
        self.nome = nome 
        self.idade = idade
        self.nota = nota

    def mostrar_nome(self):
        return self.nome    




p1 = Estudante("wanderley",32,88)

print(p1.mostrar_nome())
    