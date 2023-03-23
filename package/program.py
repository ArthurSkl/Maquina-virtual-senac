from person import Pessoa 
from contador import Contador 

lista=[]  
cont = Contador()   
while True: 
    nome = (input("digite seu nome "))
    idade = int (input("qual sua idade ?"))
    pessoa = Pessoa (nome,idade)
    lista.append(pessoa)
    cont.increment() 

    op = input("deseja continuar s/n ?").upper()
    if op == "N": 
        break  

for pes in lista: 
    print(pes.nome,pes.idade) 
print(cont.get_status())    