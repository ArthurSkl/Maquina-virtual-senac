
taxa=17 
x=float(input("digite o valor do produto"))

def calI(x,taxa):
    R = x-taxa*x /100
    return R
 
Resultado=calI(x,taxa)
print(Resultado)