
def expo(x,y):
    ex=x**y 
    return ex


x=float(input("digite o numero base !"))
y=float(input("digite até onde será elevado !"))

print("Resultado = ",expo(x,y))
if (expo(x,y)  >0 and expo(x,y) <= 9):
    print("seu calculo deu um numero de 1 digitos !")
elif(expo(x,y) >9 and expo(x,y) <= 99):
    print("seu calculo deu um numero de 2 digitos !")
elif(expo(x,y) >99 and expo(x,y) <= 999):
    print("seu calculo deu um numero de 3 digitos !")
elif(expo(x,y) >999 and expo(x,y) <= 9999):
    print("sua calculo deu um numero de 4 digitos !")
elif(expo(x,y) >9999 and expo(x,y) <= 99999):
    print("seu calculo deu um numero de 5 digitos !")         