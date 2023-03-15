cand1=0
cand2=0
cand3=0
cand4=0   
branco=0
nulo=0    
while True:
    voto=int(input("em qual dos candidato vc vai votar 1,2,3,4,   5 = branco ou 6    = nulo ou digite, 9 para emitir votos !"))


    if(voto==1):
        cand1=cand1+1
        
    elif(voto==2):
        cand2=cand2+1
        
    elif(voto==3):
        cand3=cand3+1
        
    elif(voto==4):
        cand4=cand4+1   
        
    elif(voto==5):
        branco=branco+1
        
    elif(voto==6):
        nulo=nulo+1
         
    elif(voto==9):
        print("votos do canditado 1 = ",cand1,"\nvotos do candidato 2 = ",cand2,"\nvotos do candidato 3 = ",cand3,"\nvotos candidato 4 = ",cand4,"\nvotos brancos = ",branco,"\nvotos nulos = ",nulo)
        break

    
