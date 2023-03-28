"lista=[2,2,2,2,2]"
"x=0"
"for i in range(len(lista)):"
"   x=lista[i]+x"
"   print(conta,x) "



def media (divisor,*args):
    lista=list(args)
    x=0
    cont=0
    for i in range(len(lista)):
        x=lista[i]+x
        
        cont=1+cont
        if (cont>=divisor):
            m=x/divisor
    return m
     
x=media(4,25,25,65,25)  
print(x)