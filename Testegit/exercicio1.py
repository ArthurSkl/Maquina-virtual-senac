# faça um programa q transforme uma temperatura fornecida em gahrenheit para celsius. a formula de conversão é C=(5/9)* (F-32)

#tempF=float(input("escreva a temperatura em Fahrenheit para a conversão em Celsius")) 
#print("temperatura digitada" ,tempF) 
#tempC=float((5/9)*(tempF-32))
#print(tempC) 

#========================================================================================================================================================

# faça um programa que leia o nome de uma produto, a quantidade comprada, o valor unitário e o percentual de desconto a ser aplicado para o pagamento. 
#imprima na tela o nome do produto e o valor total da venda 


#Nproduto=(input("digite o nome do pruduto ! ")) 
#print(Nproduto) 
#qnt=int(input("digite a quantidade de produtos ! "))
#print(qnt)
#preco=float(input("qual o valor do produto ? "))
#print("o preço do produto é ",preco)
#total=float(qnt*preco)
#print("o valor total da compra é de = ",total) 
#Sdesconto=float(input("qual o desconto a ser aplicado ? "))
#desconto=float((Sdesconto*total)/100)
#print("desconto",desconto)

#=========================================================================================================================================================   

#Crie um programa que receba tres valores some 2 e em seguida multiplique pelo terceiro numero !


#n1=float(input("digite o primeiro numero para soma ! "))
#print(n1," + ")
#n2=float(input("digite o segundo numero para soma ! "))
#print(n2," x ")
#n3=float(input("digite por quanto quer mutiplicar ! "))
#print("o resultado da soma sera multiplciado po " ,n3) 
#resultado=((n1+n2)*n3)
#print("o resultado de ((n1+n2)*n3) é = ",(resultado)) 

#========================================================================================================================================================

#faça um programa q converta metros em CM  
 
#m=float(input("digite quantos metros quer converter parar centimetros ! "))
#print("você digitou",m, "metros")
#cm=(m*100)
#print(cm) 

#========================================================================================================================================================

# nome=str(input("digite seu nome ! "))
# print(nome)
# idade=int(input("digite sua idade ! "))
# print("você tem",idade,"anos")
# sexo=str(input("qual seu sexo ? "))
# print("você é do sexo", sexo) 
# n1=float(input("qual a primeira nota do aludo ? "))
# print("nota 1 = ",n1)
# n2=float(input("qual a segunda nota do aluno ? "))
# print("nota 2 = ",n2)
# media=float((n1+n2)/2)
# print("a media do aluno",nome,"foi de = ",media) 
# if(media>=6):   
#     print("o aluno ",nome,"foi aprovado ")
# elif(media<6):
#     print("o aluno ",nome,"está de recuperação ") 
# if(media>=8):
#     print("parabéns aluno ",nome," sua média foi execelente  :P ") 

#========================================================================================================================================================

#Faça um progama que peça 2 numeros e imprima o maior deles 

# n1=float(input("digite um numero "))
# n2=float(input("o segundo numero ")) 
# if(n1==n2):
#     print("você digitou numeros iguais ")    
# elif(n1>n2):
#     maior=n1 
# elif(n2>n1):
#     maior=n2 
# print(maior)        

#========================================================================================================================================================

#Faça um programa que recebendo um valor inteiro,informe se o número é positivo, negativo ou neutro 

# n1=int(input("digite um numero "))
# if(n1==0):
#     print("numero neutro")
# elif(n1>0):
#     print("numero positivo")
# elif(n1<0):
#     print("numero negativo")    

#fazer um algoritimo qur ao receber salario atual de um funcionario, calcule o valor do novo salario reajustando de acorcom com a tabela 
# R$500 = 15%
# R$1000 = 10% 
# R$1500 = 5%  
# inflação=6.5% 

# salario=float(input("qual seu salario atual ? "))
# if(salario<500):
#     salarioR=salario+((15*salario)/100) 
#     print("seu salario foi reajustado em 15% ",salarioR) 
# elif(salario>=500 and salario<=1000):
#     salarioR=salario+((10*salario)/100) 
#     print("seu salario foi reajustado em 10% ",salarioR) 
# elif(salario>1000):
#     salarioR=salario+((5*salario)/100)
#     print("seu salario foi reajustado em 5% ",salarioR)     
# print("seu salario foi reajustado atutomaticamente para ",salarioR)
# inflação=((6.5*salarioR)/100)
# print(inflação)
# Ri=(salarioR+inflação) 

# print("assim deveria ser o reajuste de aumento de salario ",Ri) 

#faça um programa que verifique se uma letra digitada é "F" feminino ,"M" - masculino, "O" - Outros ou sexo invalido 

#sexo=(input("qual seu sexo, F ,M OU O"))

# if(sexo=="M" or sexo=="m" ):
#     print("masculino")
# elif(sexo=="f" or sexo=="F"):    
#     print("feminino")
# elif(sexo=="o" or sexo=="O"):
#     print("outros")  
# else:
#     print("sexo invalido ")      
    
# faça um programa que verifique se uma letra digitada é vogal ou consoante 

# letra=(input("digite uma letra "))
# if(letra=="i" or letra=="I" or letra=="a" or letra=="A" or letra=="e" or letra=="E" or letra=="a" or letra=="A" or letra=="o" or letra=="O" or letra=="u" or letra=="U"):
#    print("letra vogal")
# else: print("consoante")   

#faça um programa que leia três números e mostre-os em ordem decrescente . 

# n1=float(input( "digite um numero ! " ))
# n2=float(input( "digite o segundo numero ! "))
# n3=float(input( "digite o terceiro numero ! "))

# #maior 
 
# if (n1>n2 and n1>n3):
#     maior=n1 
# elif (n2>n1 and n2>n3):
#     maior=n2
# elif (n3>n1 and n3>n2):
#     maior=n3



# #menor 

# if (n1<n2 and n1<n3 ): 
#     menor=n1 
# elif (n2<n1 and n2<n3): 
#     menor=n2 
# elif (n3<n1 and n3<n2):
#     menor=n3 
# #meio

# if (n1!=maior and n1!=menor):
#     meio=n1 
# elif (n2!=maior and n2!=menor):
#     meio=n2 
# elif (n3!=maior and n3!=menor):
#     meio=n3 
# print(maior,meio,menor)        
            
#========================================================================================================================================================

#faça um programa que pergunte em q turno você estuda. peça para digitar M-matutino ou V-vespertino ou N-Noturno. Imprima a mensagem "bom dia!","Boa Tarde!"
#"boa noite!" ou "valor invalido", conforme o caso. 

# t=input("digite seu turno, sendo M , V , N , para matutino, vespertino e noturno") 
# if t.isalpha()==False:
#     print("digite apenas as respectivas letras ! ")

# elif (t=="m" or t=="M"):
#     print("Bom dia ! ")
# elif (t=="v" or t=="V"):
#     print("boa tarde ! ") 
# elif (t=="N" or t=="n"):   
#     print("Boa noite ! ") 
# elif (t!="n","m","v","N","V","m"):   
#     print("Digite uma letra valida ! ") 
# 
#======================================================================================================================================================== 

#reajuste de salario 280 = 20% de aumento, 700=15% de aumento, 1500 em diante =5% de aumento  e informe na tela os reajuste 

# salario=float(input("digite seu salario "))


# if  (salario<281):
#     porcent=20
#     salarioR=salario+(salario*20)/100
    

# elif  (salario<=700):
#     porcent=15
#     salarioR=salario+(salario*15)/100
    
# elif  (salario<=1500):
#     porcent=10
#     salarioR=salario+(salario*10)/100
    
# elif  (salario>1500):
#     porcent=5
#     salarioR=salario+(salario*5)/100
# print("seu salario era de ",salario ,"salario foi aumentado em ",porcent,"%", "isso resulto em um aumento de ",(salarioR-salario),"R$ = " ,"e foi aumentado para em ",(salarioR))              

#faça um programa de calculo de folha de pagamento 


# Vhora=float(input("qual valor pago por hora ? "))
# qntH=float(input("quantas horas vc trabalho por mês ? "))
# salarioB=Vhora*qntH
# sindicato=salarioB*0.03 
# FGTS=salarioB*0.11 #nao desconta 


# if (salarioB<=900):
#    impostoR=0
#    INSS=0
#    FGTS=0
#    desconto1=0
#    salarioL=salarioB-desconto1
#    print("vc nao teve desconto de imposto de renda",salarioB) 
    
# elif(salarioB<=1500):
#    desconto="5%"  
#    impostoR=salarioB*0.05
#    INSS=(salarioB*0.10)
#    desconto1=INSS+impostoR  
#    salarioL=salarioB-desconto1 

# elif(salarioB<=2500):
#    desconto="%10" 
#    impostoR=salarioB*0.10
#    INSS=(salarioB*0.10)
#    desconto1=INSS+impostoR   
#    salarioL=salarioB-desconto1 
   
# elif(salarioB>2500):
#    desconto="20%"   
#    INSS=(salarioB*0.10)
#    impostoR=salarioB*0.20
#    desconto1=INSS+impostoR 
#    salarioL=salarioB-desconto1

# print("salario bruto: ",salarioB,"\nIR: ",impostoR,"\nINSS",INSS,"\nFGTS",FGTS,"\nDESCONTOS",desconto1,"\nsalario liquido",salarioL)

#========================================================================================================================================================    

#faça um programa que leia um numero e exiba o dia correspondente da semana. (1= domingo, 2-segunda,etc.), se digitar outro valor deve aparecer valor invalido   

# n1=int(input("digite de 1 a 7 para os dias da semana sendo 1 domingo !"))
# if (n1==1):
#    n1="domingo"
# elif(n1==2):
#    n1="segunda"
# elif(n1==3):
#    n1="terça"
# elif(n1==4):
#    n1="quarta"
# elif(n1==5):
#    n1="quinta"
# elif(n1==6):
#    n1="sexta"
# elif(n1==7):
#    n1="sabado"  
# else:
#    print("digite um numero valido 1 A 7 ")  

# print("você escolheu = ",n1) 

#========================================================================================================================================================

#faça um programa que leia duas notas parcias obtidas por um aluno numa disciplina ao longo de um semestre, e calcule a sua média. A atribuição de conceitos obedece a tabela a baixo: 
#Media de aproveitamento
# entre 9.0 (I) e 10.0 (I) A 
# entre 7.5 (I) e 9.0 B 
# entro 6.0 (I) e 7.5 C 
# entre 4.0 (I) e 6.0 D 
# entre 4.0 (I) e 0.0 (I) E  

#O algoritimo deve mostrar a tela as notas, a media, o conceito correspondete ea mensagem "aprovado" se o conceito for a,b ou c OU "Reprovado" se for D ou F 

          

# Nome=str(input("digite o nome do aluno ! "))
# n1=float(input("digite a primeira nota do aluno ! "))
# n2=float(input("digite a segunda nota do aluno ! ")) 
# media=(n1+n2)/2 

# if(media>=9 and media<=10):
#    print("sua média foi de = ",media,"sua nota foi = A ,",Nome, " está aprovado  ! ")
# elif(media>=7.5 and media<9):
#    print("sua média foi de = ",media,"sua nota foi = B ,",Nome, " está aprovado !")   
# elif(media>=6.0 and media<7.5):
#    print("sua média foi de = ",media,"sua nota foi = C ,",Nome, " está aprovado !") 
# elif(media>=4.0 and media<6.0):
#    print("sua média foi de = ",media,"sua nota foi = F ,",Nome, " está reprovado !")
# elif(media>=0.0 and media<4.0):
#    print("sua média foi de = ",media,"sua nota foi = E ,",Nome, " está reprovado !")   


# faça um programa que diga se os trianguloes são equilatero, isosceles ou escaleno 
# l1=float(input(" lado 1 "))
# l2=float(input(" lado 2 "))
# l3=float(input(" lado 3 ")) 

# if(l1==l2 and l1==l3):
#    print("triangulo equilatero ! ")
# elif(l1==l2  or l2==l3 or l3==l1 ):
#    print("triangulho isósceles ! ")
# elif(l1!=l2 and l1!=l3 and l3!=l2 ):  
#    print("triangulo escaleno ! ")

#digite uma data 




print("-- Resevartório de Água --")

altura=float(input(" Digite a altura (cm): "))
largura=float(input(" Digite a largura (cm): "))
comprimento=float(input(" Digite o comprimento (cm): "))
c_diario=float(input("Digite o valor do consumo médio diário(litros/dia)= "))

cap_total=((altura*largura*comprimento)/1000); '''o resultado seria em 
cm3 por isso, dividimos por mil para passar de cm3 para litros'''
auton_reser=cap_total/c_diario

print("Capacidade do Reservatório= ",cap_total, "litros ")
print("Autonomia do reservatório= ",auton_reser," dias")
'''Agora, vamos classificar o consumo'''
if(auton_reser<2):
     print("Consumo Elevado")
elif(auton_reser>=2 and auton_reser<=7):
     print("Consumo Moderado")
elif(auton_reser>7):
      print("\n Consumo Baixo")












    
 


  
    






