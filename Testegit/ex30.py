mediaT=0 
nome=[]
gab=[] 
Resp=[]
nota=0
notas=[] 
qnt=0
for i in range(10):
    gab.append(input("qual o gabarito da prova ?").upper())
    print(gab)
      
while True:
    nome.append(input("qual seu nome ?"))
    for i in range(len(gab)):
        Resp.append(input("escolha a alternativa A,B,C OU D !").upper())
        #print("============",Resp)
        if(gab[i]==Resp[i]):
            nota=nota+1
    notas.append(nota)
    Resp=[]        
    nota=0
    op=int(input("quer ir para o proximo, digite 1 se nao digite 2 "))
    qnt=qnt+1
    if(op==2):
        break      
print(notas)
for i in range(len(nome)):
    print(nome[i],"sua nota foi ",notas[i])
print("\nmaior nota = ",max(notas),"\nmenor nota =",min(notas),"\nMEDIA DA TURMA = ",sum(notas)/qnt)
print("quantidade de alunos presentes = ",qnt) 
print("maior nota da turma foi do = ",nome[notas.index(max(notas))],"\nmenor nota da turma foi do = ",nome[notas.index(min(notas))],"MELHORE !")


