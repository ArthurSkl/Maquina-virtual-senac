
while True:
  
    
   
    
    chest = []
    nome=input("digite seu nome :) ")
    codigo=int(input("digite seu CPF :) "))
    altura=int(input("digite sua altura em CM :) "))
    peso=int(input("qual seu peso ? :) ")) 
    chest.append (nome)
    op=input("digite 0 para cadrastar novo cliente, ou 1 para mostrar cadastro ")
    

    if(op==1):
        for i in range (len(chest)):
            print(chest[i])
            break
    else: 
        continue  