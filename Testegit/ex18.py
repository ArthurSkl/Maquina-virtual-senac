NumAlunos=int(input("quantos alunos tem na turma ? "))
idade=0
dados=[]
x=[]
nomes=[]
for i in range(NumAlunos):

    n=str(input("qual seu nome ? "))
    idade=int(input("qual sua idade ?"))
    dados.append(n)
    dados.append(idade)

for i in range (1, NumAlunos*2, 2):
    x.append(dados[i])
for i in range (0, NumAlunos*2, 2):
    nomes.append(dados[i])    

print(nomes,"\na media da idade da turma é de = %.0f"%(sum(x)/NumAlunos))



