def frutas (**kwargs):
    print("lista de frutas ")
    for i in kwargs:
        print("\n",kwargs[i])

frutas(x="Pera",c="Uva",a="Maça",p="Salada mista")  

print("============================separação da Função ===================================")
fruta=[]
def frutas (*args):
    print("lista de frutas ")
    posição=1
    lista=list(args)
    for i in range (len(lista)):
        print("\n",posição,"= ",lista[i])
        posição=posição+1

for i in range (3):
    fruta.append(input())
frutas("Pera","Uva","Maça","Salada mista",fruta) 



print("============================separação da Função ===================================")  

          
