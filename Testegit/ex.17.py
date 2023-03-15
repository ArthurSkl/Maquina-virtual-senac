
chest=[] 
Rep=1
while True:
    n=int(input("escreva um numero ! "))
    chest.append(n) 
    Rep=int(input("deseja parar ? digite 0, caso deseje continuar digite de 1 "))

    if(Rep==0):
        break

for i in range(len(chest)):
    print("essa foi a sequencia de numeros digitados ",chest) 
    print("menor valor digitado =",min(chest))
    print("maior valor digitado =",max(chest))
    print("soma dos valores digitados =",sum(chest))
    
