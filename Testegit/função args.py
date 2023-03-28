"""def world_cup_titles(country, *args):
    print('Contry ',country)
    for title in args: 
        print('Year',title )

world_cup_titles('Brasil','1958','1962','1970','1994','2002','paçoca') """



def lista_de_nomes (**kwargs):

    for i in (kwargs):
        print("\n",i)
        for x in range (len(kwargs[i])):
            print("foi ? ",kwargs[i][x])
        
        
dados=[]
nomes = []
for i in range():
    #x=int(input("digite a quantidade de pessoas "))
    nome=(input("qual seu nome ?"))
    dados.append(nome)
    nomes.append(nome)

    cpf=(input("digite seu cpf "))
    dados.append(cpf)


for i in nomes:

    lista_de_nomes(i = dados)







"""def frutas (**kwargs):
    print("lista de frutas ")
    for i in kwargs:
        print("\n",kwargs[i])

frutas(x="Pera",c="Uva",a="Maça",p="Salada mista")  """