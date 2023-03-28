class Pessoa :
    def __init__(self,nome:str,cpf:str,numero:int,salario:float):  
        
        if (isinstance(nome,str)):
            self.nome = self.validar_nome(nome)
            
        else:
            print("o nome deve ser do tipo STR ")
            nome=input("Digite seu nome ! ")

        if (isinstance(cpf,str)):
            self.cpf = cpf

        else:    
            print("O CPF deve ser do tipo STR ! ")
            cpf =input("digite seu CPF ! ")

        if (isinstance(numero,int)):
            print("O numero deve ser do tipo INT")
            print(type(numero))

            
        if (isinstance(salario,float)):
            print("O salario deve ser do Tipo float !")
            print(type(salario))
         
            
            self.cpf = cpf 
            self.numero = numero 
            self.salario = salario 

        else: 
            print("salario deve ser float ! ")      

                   

    def get_dados (self) :
        
        print(f"nome : {self.nome}\n CPF : {self.cpf} \n Numero : {self.numero} \n Salario da pessoa : {self.salario}")




x=Pessoa("Arthur",5451851,99999999,1996.90)
 
print(x.get_dados())  








        