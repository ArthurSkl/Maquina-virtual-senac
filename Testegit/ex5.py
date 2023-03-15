while True: 
    op=int(input("digite 0 para sair "))
    if(op==0):
        break
    nome=input("digite seu nome ")
    
    idade=int(input("digite sua idade "))
    
    if(idade>0 and idade<150):
        print(idade)
    else: 
        print("digite uma idade valida ! ")
        continue
    salario=float(input("digite seu salario "))
    if(salario>0):
        print("$",salario)
    else:
        print("digite um salario valido ! ")
        break    

    sexo=input("digite seu sexo sendo:\n F para feminino \n M para masculino \n O para outros ")
    if(sexo== 'S' or sexo=='M' or sexo=='O' or sexo== 's' or sexo=='m' or sexo=='o'):
        print(sexo)
    else:
        print("digite um sexo valido !") 
        break   
    estado=input("informe seu estado civil, sendo :\n S para solteiro \n C para casado \n V para viuvo \n D divorciado ")
    if( estado=='S' or estado=='s' or estado== 'C' or estado=='c' or estado== 'V' or estado=='v' or estado=='D' or estado=='d' ):
        print(estado)
        break
    
    else:
        print("digite um estado civil valido !")
        break

print(nome,idade,salario,sexo,estado) 