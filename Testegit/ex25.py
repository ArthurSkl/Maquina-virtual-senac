idade=0
peso=0
dormido=0
idade=int(input("qual sua idade ?"))
peso=float(input("qual seu peso ?"))
dormido=int(input("quantas horas vc dormiu ?"))

while True:
    
    if (idade<=16 or idade<=69):
        print("idade valida")
    elif(idade<16 or idade>69):
        print("muito novo ou muito velho")   
        break
    if(peso>=50):
        print("peso valido")
    elif(peso<50):
        print("peso invalido")
        break
    if(dormido<6):
        print("vc nao pode doar sangue, pois dormiu pouco")
        break    
    if(dormido>=6):
        print("voce pode doar sangue")
        break