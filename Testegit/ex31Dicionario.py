

saltoF=5
nomes=[]
salto=[]
medias=[]
saltoR=[]
coloc1=[]
lugar=[]
dic={} 
cont=0
while True :
    
    n=(input("qual seu nome atleta ?"))
    nomes.append(n)

    for i in range(5):

        s=(float(input("qual foi a distancia exata do salto ?")))

        salto.append(s)

        saltoR.append(s)

   
    print("o atleta de nome = ",nomes) 


    x=salto.index(min(salto)) 

    print("menor salto ",saltoR[x])

    salto.pop(x)

    x1=salto.index(max(salto))

    print("maior salto ",saltoR[x1])

    salto.pop(x1) 
    m=(sum(salto)/len(salto)) 
    medias.append(m) 
    salto=[] 
    lugar.append(n)
    lugar.append(m)
    

    dic[n]=m
     

    for i in range (len(saltoR)):

       print(f"distancia do salto {i+1} ",saltoR[i]," M ")    
    print("media dos saltos = ",medias)

    op=int(input("dejesa inserir outros dados ?, 1 para sim 2 para nao "))
    saltoR=[]
    if(op==2):

        
        break           
for i in sorted(dic, key = dic.get ,reverse=True):
    
    if(cont==3):
        break
    print("posição ° ",cont+1,"  ",i,dic[i])
    
    #print(dic)
    cont=cont+1
             
    

#o melhor e o pior salto serão eliminados 