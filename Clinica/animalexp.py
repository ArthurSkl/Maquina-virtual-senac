from animal import *
from pessoa import * 

class Tatu(Animal) :
    def __init__(self, name, color, peso,carapaca):
        super().__init__(name, color, peso)
        self.carapaca = carapaca 
        

    def cauter (self):
        print ("tatu cauter de  master  !!!") 

m=Tatu("ramus","cor",340,"espinhos")
m.cauter() 

T=Pessoa ("Nome !!!! ","99999999","excluir") 
print(T.get_nome())
T.excluir_n ()
print(T.get_nome())

    