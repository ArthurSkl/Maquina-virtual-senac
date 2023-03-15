
cidades=["CG","RJ","BH"]
nveiculos=[100,100,100]
acidentes=[20,50,100]
vitimas=[10,20,10]
ListaSuprema=[cidades,nveiculos,acidentes,vitimas]
maior=0 
menor=999999999
nomec=str
v2000=0
posição2=0
media=0
while True:
    cidade=(input("qual cidade vai preencher os dadas ? "))
    cidades.append(cidade)

    veiculo=int(input("qual numeros de veiculos ? "))
    nveiculos.append(veiculo)

    acidente=int(input("qual numero de acidentes ?"))
    acidentes.append(acidente)

    vit=int(input("qual foi o numero de vitimas ?"))
    vitimas.append(vit) 
    op=int(input("parar ? digite 0 "))
    for i in range(len(acidentes)):
        if (acidentes[i]>maior):
            maior=acidentes[i]
            posição=(acidentes.index(maior))        
            
        if (acidentes[i]<menor):
            menor=acidentes[i]
            posição1=(acidentes.index(menor))  

    for i in range(len(nveiculos)):
        if (nveiculos[i]<2000):
            v2000=v2000+acidentes[i]
            posição2=posição2+1
            media=v2000/posição2
    if(op==0):  
        break 

               
print("nome da cidade com maior numero de acidente = ",cidades[posição]," o numero de acidentes foi de  = ",maior)
print("nome da cidade com menor numero de acidente = ",cidades[posição1]," o numero de acidentes foi de = ",menor)
print("a média de veiculos nas cidades é de = ",(sum(nveiculos)/len(nveiculos)),"\nMedia das cidades com menos de 2000 veiculos %.0f"%media)







