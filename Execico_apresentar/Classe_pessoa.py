import re
class Pessoa :
    def __init__(self,nome:str,cpf:str,numero:int,salario:float):  
        
        self.nome = self.validar_nome(nome)

        self.cpf = self.validar_cpf(cpf)

        self.numero = self.validar_numero(numero)

        self.salario = self.validar_salario(salario)
       

    def validar_nome(self,nome):
        

        if (isinstance(nome,str)): 
            return nome 
         
        else : 
            nome = (input("DIGITE NOVAMENTE: "))

            while contem_numeros(nome)  : 
                print("NOME INVALIDO!!")

                nome = (input("DIGITE NOVAMENTE: "))

                if (not(contem_numeros(nome))):  
                    break 
            return nome
                    
    def validar_cpf(self,cpf):

        if (isinstance(cpf,str) and (len(cpf)==11)):  

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

        return self.nome , self.cpf , self.numero , self.salario   

def contem_numeros(string):
    """Retorna True se a string contém pelo menos um número, caso contrário, retorna False."""
    padrao = re.compile(r'\d')
    return bool(padrao.search(string))

x=Pessoa(1,"01234567891",99999999,1996.90)
 
print(x.get_dados())  







# Exemplo de uso
#print(contem_numeros("Olá, mundo!"))  # False
#print(contem_numeros("A senha é 1234"))  # True



        