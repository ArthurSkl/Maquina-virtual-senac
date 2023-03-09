def coisa (nome,ano="2022",*args):
    print(nome)
    print("ano de cadastro",ano)

    for i in range (len(args)):
        print(args[i],)



coisa("paçoca",18,1.92) 
coisa("ZÉ",18,1.87) 

