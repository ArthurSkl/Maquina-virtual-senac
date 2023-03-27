class Calculadora: 
    pass

    def calcular (self,opcao,num1,num2):

        if opcao == "+":  

            return self.__adicinar(num1,num2)
        
        elif opcao == "-":

            return self.__subtrair(num1,num2) 
        
        else: 

            print("Opção invalida ! ")

    def __adicinar(self,n1,n2):
        return n1 + n2    

    def __subtrair(self,n1,n2): 
        return n1-n2 
    
calc = Calculadora() 
result = calc.calcular("+",6,10)
print(result)    