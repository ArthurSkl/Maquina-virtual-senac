valor=0.18
qnt=int(input("digite quantos produtos o cliente comprou !"))
print("TABELA DE PREÇOS :)")
for i in range(1,qnt+1):
    print("quantidades de pães ",i,"= ",(valor*i))