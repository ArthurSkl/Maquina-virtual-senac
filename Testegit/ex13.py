x=int(1)
y=0
r=0
soma=0
lista=[]
x=int(input('digite  '))
y=int(input('digite '))

for r in range (x,y): 
    print(r)
    soma=soma+r 
    lista.append(r)
    

print("o resulta da soma é de = ",soma,"  !")
print(lista)