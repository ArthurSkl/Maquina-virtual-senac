par=0
impar=0
x=1
lista=[]
Cont=int(input("contador"))
for x in range(Cont):
    lista.append(input("digite um numero ! "))
    for lista in range (len(x%2==0)):
        par=par+1
    for lista in range (len(x%2!=0)):
        impar=impar+1
print("pares = ",par,"impares = ",impar)        

    