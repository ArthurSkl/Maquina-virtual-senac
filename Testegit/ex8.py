pesoPena = 10000
pesoPesado = 0 
avatar = 0
smurf= 2000
codigoMax = 1
codigoMin = 0

while True:
    altura=int(input("digite sua altura :) "))
    peso=int(input("digite seu peso :P "))
    codigo=int(input("digite seu codigo :) "))
    print("cadrastrar novo clite digite 1 \n motrar resultado digite 2")

    if(peso>pesoPesado):
        pesoPesado=peso
        codigoMax=codigo 
        

    if(peso<pesoPena):
        pesoPena=peso 
        codigoMin=codigo   

    if(altura>avatar):
        avatar=altura
        codaltM=codigo
    if(altura<smurf):
        smurf=altura
        codigomen=codigo
    print(" menor = ",smurf,"codigo do menor = ",codigomen,"\n maior = ",avatar,"o codigo do maior é = ",codaltM, "\n mais pesado = ",pesoPesado,"\n mais leve = ",pesoPena, "\n seu codigo é do  mais alto = ",codigoMax,"\ncodigo do menor = ",codigoMin )        

    


        