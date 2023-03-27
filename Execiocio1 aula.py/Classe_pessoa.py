from barra_pregressao import *

class Pessoa : 
    def __init__(self,nome,matricula,idade):
        self.nome = nome 
        self.matricula = matricula 
        self.idade = idade 

class Aluno (Pessoa): 
    def __init__(self, nome, matricula, idade ,nota1,nota2,nota3,nota4):
        super().__init__(nome, matricula, idade)
        self.n1 = nota1 
        self.n2 = nota2 
        self.n3 = nota3 
        self.n4 = nota4 

    def get_notas (self):
        notas=self.n1+self.n2+self.n3+self.n4 
        return notas   
    def estudar (self) :
        print("Estudando !!! ") 
        print(progress_bar(10))
        

class Professor (Pessoa) : 
    def __init__(self, nome, matricula, idade,formacao, disciplina, cargahorária , salario):
        super().__init__(nome, matricula, idade) 
        self.formacao = formacao
        self.disciplica = disciplina
        self.cargah = cargahorária
        self.salario = salario 

    def calcular_media(self,notas) :
        media=notas/4

        return media
    def lesionar (self) :
        print("aula em progresso !  ") 
        print(progress_bar(10))

aluno = Aluno("Jão",458255,18,6,5,2,9) 
print(aluno.get_notas())
notas=aluno.get_notas()
aluno.estudar()
professor = Professor("Thiago",485225,45,"T.I BRABO","Desenvovimento de software",195,8546)
professor.lesionar()
print("a media do aluno foi ",professor.calcular_media(notas))





