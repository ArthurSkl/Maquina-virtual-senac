carros=["fusca","gol","uno","vectra","peugeout"]
consumo=[7,10,12.5,9,14.5] 
gasolina=2.25
while True:
    op=int(input("1 para adcionar modelos e informaçoes ou digite 0 para sair e ver informaçoes"))
    if(op==1):      
        carros.append(input("qual modelo do carro ?"))
        consumo.append(int(input("quantos km o carro faz com 1 litro ?")))
    if(op==0):
        for i in range(len(carros)):
            print(carros[i],"com um litro o modelo faz =",consumo[i]," KM","o custo para percorer uma distancia de 1000km é de R$= %.2F"%(1000/consumo[i]*gasolina))
        break
