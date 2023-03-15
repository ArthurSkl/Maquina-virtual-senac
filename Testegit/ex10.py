a=[1,2,3]
soma=0

r=[]
op=9
while True: 
    if(op!=0):
        a.append(int(input("digite um numero")))
        op=int(input("caso deseje para de inserir dados, aperte 0 "))

    elif(op==0):
        print("o maior numero", (max(a)))
        print("o menor numero é ", (min(a)))
        print("a soma de todos os elementos da lista é de ",(sum(a)))
        print("o numero UM apareceu ", (a.count(1)))
        
        break


# for i in range(len(a)):
#     soma=soma+a[i]
#     r.append(soma)
#     print(soma)
    
print(a)

    

