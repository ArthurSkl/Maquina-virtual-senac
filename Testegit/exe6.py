salario=float(input("qual seu salario ? ")) 
porcentagem=1.5
novosalario=salario+salario*porcentagem/100
ano=1997
anonovo=2023

while ano<=anonovo:
    porcentagem=porcentagem*2
    novosalario=novosalario+novosalario*porcentagem/100
    ano=ano+1
print("salaraio atual = ",novosalario)    
    


