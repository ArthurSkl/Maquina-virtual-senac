gab=[]
Nome=[] 
nota=0 
total=0 
media=0 
lmedia=[]
respA=[]
notal=[]
qnt=0
mediaT=[]
turma=[]
qnt=int(input("quantas provas serão realizadas ?"))
rep=int(input("quantas questões tem na prova ?"))
n=input("digite seu nome ! ")    
Nome.append(n)
turma.append(n)
for i in range(qnt):
    for i in range(rep):
        ques=input("digite o gabarito da prova apenas uma resposta por vez = ")
        gab.append(ques)
    print("este gabarito esta correto ?\n",gab)
    for i in range(rep):
        r=input("qual a resposta da questão A,B,C OU D\n=")
        respA.append(r)

    #print("suas respostas foram \n",respA) 

    for i in range(len(gab)):

        if(gab[i]==respA[i]): 
            nota=nota+1
        else:
            nota=nota+0
    notal.append(nota)
    media=(sum(notal)/qnt)
    lmedia.append(media) 
    turma.append(media)
    
print("a media do aluno ",Nome[0],"foi de = ",lmedia[0], )
print(turma)
