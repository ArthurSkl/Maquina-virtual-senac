class Sala:
    def __init__(self, nome, andar, checklist,descrição,imagem_png,cor):
        self.nome = nome 
        self.andar = andar 
        self.checklist = checklist
        self.descrição = descrição
        self.imagem_png = imagem_png
        self.cor = cor

    def add_L(self):
        lista=[]
        lista.append(self.nome)
        lista.append(self.andar)
        lista.append(self.checklist)
        lista.append(self.descrição)
        lista.append(self.imagem_png)
        lista.append(self.cor)

        return lista  

   
pacaco = Sala("sala 1 ","segundo andar ","checklist 3 ","descrição paçoca ","foto ","cor ")
p=pacaco.add_L()
#print(pacaco.add_L())
print(p)

for i in range (len(p)):
    print(p[i])
