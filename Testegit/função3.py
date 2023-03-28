def pn (x,y):
    if  (x>0):        
        R ="positivo"
        
        
    else :
        R ="negativo" 
        
    
    if  (y>0):        
        Z ="positivo"
        
        
    else:
        Z ="negativo" 
    
    return (R,Z)
       
x=float(input("digite o primeiro numero ! "))
y=float(input("digite o primeiro numero ! ")) 

x=pn(x,y)

print(x)