funcionarios={}

while True:
    for i in range(3):
        n=str(input("digite seu nome "))
        s=float(input("digite seu salario "))
        salarios=[]
        if(s<1300):
            abono=200
        elif(s==0):
            print("digite um salario valido !")
            break        
        else:    
            abono=20*s/100 
        salarios.append(s)
        salarios.append(abono)

    
        for i in range(len(salarios)):
            funcionarios[n]=salarios
            
            
        n=""
        s=0 
    for i in funcionarios:
        print(i," salario ",funcionarios[i][0]," abono = ",funcionarios[i][1],"\n")

    for i in sorted(funcionarios, key = funcionarios.get ,reverse=True):
        print(funcionarios[i])     
        
    
        

   
