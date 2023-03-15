zé2=0
zé1=0
simões=0
população=0

população=int(input("Qual a população do país/estado ou municipio ?")) 

for i in range(população):
    print("informações dos candidatos\n","zé1 digite 1\n","zé2 digite 2\n","simões digite 3\n")
    voto=int(input("digite seu voto !"))
    if(voto==1):
        zé1=zé1+1
    elif(voto==2):
        zé2=zé2+1
    elif(voto==3):
        simões=simões+1
print("votos totais dos candidatos !","\nvotos para o candidado zé1 =",zé1,"\nvotos para o candidato zé2 =",zé2,"\nvotos para o candidado simões =",simões)                
        
