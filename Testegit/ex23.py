n=int(input("até onde deseja ir ?"))
F=[0,1]
for i in range(n):
    cont=F[i]+F[i+1]
    F.append(cont)
print(F)
    

    

