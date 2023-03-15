
while True :
    print(" 0 para sair\n 1 para +   5 para % \n 2 para - \n 3 para / \n 4 para * \n")
    op=int(input("escolha a operação que deseja realizar "))
    if(op==0):
        break
    n1=float(input("digite o primeiro numero"))
    n2=float(input("digite o segundo numero")) 
    resultado=0.0

    
    if (op==1):
        resultado=n1+n2
    elif(op==2):
        resultado=n1-n2 
    elif(op==3):
        resultado=n1/n2
    elif(op==4):
        resultado=(n1*n2)
    elif(op==5):
        resultado=((n1*n2)/100)    

    print("=====" ,resultado, "=====") 
   
     

