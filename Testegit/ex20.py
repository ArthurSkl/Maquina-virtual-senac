valor=1.99
qnt=int(input("digite quantos produtos o cliente comprou !"))
print("TABELA DE PREÇOS :)")
for i in range(1,qnt+1):
    print("quantidade de produtos ",i,"= ",(valor*i))
