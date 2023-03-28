class Pessoa :
    def __init__(self,nome:str,cpf:str,numero:int,salario:float):  
        
        self.nome = self.validar_nome(nome)

        self.cpf = self.validar_cpf(cpf)

        self.numero = self.validar_numero(numero)

        self.salario = self.validar_salario(salario)
       

    def validar_nome(self,nome):
        print(type(nome))

        if (isinstance(nome,str)): 
            return nome 
        else : 
            while True :
                print("NOME INVALIDO!!")
                nome = input("DIGITE NOVAMENTE: ")
                self.validar_nome(nome) 
                print(type(nome))
                if type(nome) == str : 
                    break
            return nome            
    def validar_cpf(self,cpf):

        if (isinstance(cpf,str)):  
            return cpf 
        else : 
            while True :
                print("NOME INVALIDO!!")
                cpf = input("DIGITE NOVAMENTE: ")
                x=self.validar_cpf(cpf) 
                if x == True : 
                    break
                


    def validar_numero (self,numero):

        if (isinstance(numero,int)): 
            return numero
        else : 
            return "ERROO"
    def validar_salario(self,salario): 
        if (isinstance(salario,float)):
            return salario
        else: 
            return "ERROO" 
    def get_dados (self): 

        print (f"{self.nome}")    


x=Pessoa(1,5451851,99999999,1996.90)
 
print(x.get_dados())  








        