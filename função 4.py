
p=1.99
chest={}
q=int(input("quantidade de produtos "))
def preco (q) :
    p=1.99
    cont=0
    preco=[]
    for i in range (q):
    
        p=p+1.99

        cont=cont+1
        preco.append(p)
        
        

    
    return preco 
lista=preco(q)

for i in range (preco):
    print("\n",(i))