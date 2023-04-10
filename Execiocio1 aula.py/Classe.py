
from barra_progressao import *
class Filme :
    def __init__(self,nome,duration,) :
        self.nome = nome 
        self.duration = duration 
    def Play(self):
        print("o filme esta e exibição ")
        progress_bar(self.duration) 
        print("o filme terminou ! ")


filme = Filme("Guerra infina ",10)
filme.Play() 

class Genero(Filme): 
    def __init__(self, nome, duration, genero):
        super().__init__(nome, duration)
        self.genero = genero 
    def get_info (self): 
        lista = []
        lista.append (self.nome)
        lista.append (self.duration)
        lista.append (self.genero) 
        return lista 

filme2 = Genero ("Flash",15,"ficção") 
print(filme2.get_info())     

        


              