
chest=[]
cont=0 
result=1
x=int(input("digite o numero quer deseja fatorar ! ")) 

while True:
    if(x>0):
        chest.append(result)
        result=result*x
        x=x-1
    elif(x==0):
        break
print("resultado",result,"====")   
print(chest) 

   
