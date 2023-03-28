class Ingresso : 
    def __init__(self,preco,setor) :
        self.preco = preco 
        self.setor = setor 
    def alterar_preco(self):
        print(f"preço atual do ingresso {self.preco}")
        self.preco=input("qual o novo preço dos ingressos ")
        print(f"novo preço registrado {self.preco } ") 
    def get_setor (self) : 
        print(f"setor {self.setor}")   
    



class Ingresso_vip (Ingresso) : 
    def __init__(self, preco, setor):
        super().__init__(preco, setor) 
        self.camarote = True 
        self.open_bar = True 
        self.open_food = True 
        self.estacionamento = True
    def pegar_bebida(self): 
        print("pegou uma bebida ")
    def acessar_camarote (self):
        print("acessou o camarote ") 
    def Vip_privilegios (self): 
        print(f"os Vips tem accesso ao camarote, open_bar, open_food e estacionamento ")    