atletas={} 
nome="pedro"

cont=0
for i in range(5):
    nome=input("qual seu nome !")
    atletas[nome]=float(input("digite sua media !"))
        

for i in sorted(atletas, key = atletas.get ,reverse=True):
    
    if(cont==3):
        break
    print("posição °",cont+1," ",i,atletas[i])
    
    cont=cont+1

print(atletas)