Senha do banco $uP0rT3@22 





create database garagem; 
use garagem;

create table pessoa (
	id_pessoa int not null auto_increment,
    nome varchar(100) not null,
    cpf char(11) unique not null,
    rg char(11) not null,
    email varchar(150),
    constraint primary key (id_pessoa)
    
    );
    
insert into pessoa (nome,cpf,rg,email) values ("wanderley","457812","123","wanderley-terra@gmail.com");    
insert into pessoa (nome,cpf,rg,email) values ("Arthur Simões","4485128","456","jorgefugitora@hotmail.com");
insert into pessoa (nome,cpf,rg) values ("jão","875496","87956");
insert into pessoa (nome,cpf,rg,email) values ("vinicios","22123","2223365","main-irelia@hotmail.com");
insert into pessoa values (default, "igor silva","3232","542432","igor@hotmail.com");
insert into pessoa (nome,cpf,rg,email) values ("Arthur Augusto Coelho Frantz","0215148","21568","coelhojogos@hotmail.com");
insert into pessoa (nome,cpf,rg,email) values ("thiago","3949282","97681495","tiago@hotmail.com");
insert into pessoa (nome,cpf,rg,email) values ("zé","5683246","78464512","zé@hotmail.com");
insert into pessoa (nome,cpf,rg,email) values ("nome aleatorio","47269d433","4827863228","nomealeatorio@hotmail.com");

select * from pessoa;  
select * from carro;

create table carro(
	id_carro int not null auto_increment,
    marca varchar(50) not null,
    modelo varchar(50) not null,
	portas char(4) not null,
    placa char(8) not null,
    id_pessoa int not null,
    constraint primary key (id_carro), 
    constraint foreign key (id_pessoa) references pessoa (id_pessoa)
    
); 
    
alter table carro add column id_pessoa int not null;    
insert into carro (marca,modelo,portas,placa,id_pessoa) values ("volks","Gol","3","hhh-0000",3); 
insert into carro (marca,modelo,portas,placa,id_pessoa) values("Chevrolet","Celta","4","hhh-1000","1");   
select * from carro;

alter table carro add constraint id_fk_pessoa
foreign key(id_pessoa) references pessoa (id_pessoa);

drop table carro ;
    
show tables ;	


select current_date();
select current_timestamp();
select current_time();
select now();


create table login(

	id_login int not null auto_increment, 
    email varchar(100) not null,
    senha varchar(100) not null,
    logado timestamp default current_timestamp(),
    
    constraint primary key (id_login)
    
);


insert into login (email,senha) values ("art55hur@solomons.com","4455654566"); 

select * from login;

select email, date_format(logado,'%d%m/%Y') as ultimo_login from login; 

select email, date_format(logado,'%D') as ultimo_login from login; 


insert into login (email,senha,logado) values("dasdsa","dsadsa",current_date()) ;


create table funcionario(
id int not null auto_increment,
nome varchar(100) not null,
data_nasc date not null,
constraint primary key (id)
);


insert into funcionario (nome,data_nasc) values ("dsadsadsadsa","1985-05-12");

show databases;

select * from funcionario;

select id,nome,
timestampdiff(YEAR,data_nasc,now()) as idade 
from funcionario; 


show databases; 

use garagem; 

show tables;

create table produtosBK(
	id int not null auto_increment,
    nome varchar(100) not null,
    preco decimal(10,2) not null,
    constraint primary key (id)
    
); 

select * from produtosBK; 

insert into produtosBK
select null,nome,preco from produtos;


insert into produtos values (default,"morango",7);
insert into produtos values (default, "laranja",10);
insert into produtos values (default, "melancia",12); 
insert into produtos (nome,preco) values ("abacaxi",5); 


select * from produtos where preco > 3 ; 


select id,nome from produtos
where preco in 
(select max(preco) from produtos);    




create database biblioteca; 
use biblioteca;

create table livro(
	id_livro int not null auto_increment,
    titulo varchar(100) not null, 
    descricao text not null,
    idioma varchar(50),
    paginas int ,
	constraint primary key (id_livro)
);  

select * from livro; 
select * from autor;

insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("livro 1","o primeiro livro a ser cadastrado","portugues","397","1","1");
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("livro2","o segundo livro a ser cadastrado","portugues","587",1,2);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("livro 3","o terceiro livro a ser cadastrado","portugues","152",3,1);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("livro 4","o quarto livro a ser cadastrado","portugues","986",3,3);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("livro 5","o quinto livro a ser cadastrado","portugues","214",4,2);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("livro 6","o sexto livro a ser cadastrado ","portugues","159",5,3);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("livro 7","o setimo livro a ser cadastrado","portugues","258",6,4);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("第 8 冊","第八本書要登記","chines","859",7,4);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("livro 8","o setimo livro a ser cadastrado","portugues","298",5,7);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("livro 9","o setimo livro a ser cadastrado","portugues","558",7,5);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("dsadasdsadsa","o setimo ldsadsaivro a ser cadastrado","portugues","558",99,99);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("dsadasdsadsa","livro cadastrado ERRADO ! ","portugues","558",999,999);

select * from editora as e
inner join livro as l 
on e.id_editora = l.id_editora;

select l.titulo,e.nome from editora as e
inner join livro as l 
on e.id_editora = l.id_editora;

select * from autor as a
inner join livro as l 
on a.id_autor = l.id_autor; 

select a.nome,l.titulo from autor as a 
inner join livro as l 
on a.id_autor = l.id_autor
order by a.nome asc;
 
select autor.nome,autor.email,livro.titulo,livro.idioma,livro.paginas,editora.nome
from autor inner join livro 
on autor.id_autor = livro.id_autor
inner join editora 
on editora.id_editora = livro.id_editora;


desc livro;


alter table livro add column id_autor int not null ; 
alter table livro add column id_editora int not null;
create table autor (
	id_autor int not null auto_increment,
    nome varchar(100) not null,
    email varchar(100) not null,
    constraint primary key (id_autor) 
    
);

insert into autor (nome,email) values ("autor 1","emailaut1@hotmail.com");
insert into autor (nome,email) values ("autor 2","emailaut2@hotmail.com");
insert into autor (nome,email) values ("autor 3","emailaut3@hotmail.com");
insert into autor (nome,email) values ("autor 4","emailaut4@hotmail.com");
insert into autor (nome,email) values ("autor 5","emailaut5@hotmail.com");
insert into autor (nome,email) values ("autor 6","emailaut6@hotmail.com");
insert into autor (nome,email) values ("autor zé","zé@hotmail.com");
insert into autor (nome,email) values ("autorerros","erro@hotmail.com");
insert into autor (nome,email) values ("maisumautor","maisum@hotmail.com");

create table editora(
	id_editora int not null auto_increment,
    nome varchar(100) not null,
    cnpj char(14) not null,
    cidade varchar(100) not null,
    constraint primary key (id_editora)
    
); 

select * from livro;

select  editora.nome,editora.cidade,editora.cnpj,livro.titulo,livro.idioma,livro.id_autor
from editora inner join livro 
on editora.id_editora = livro.id_editora;

show tables;

select  editora.nome,editora.cidade,editora.cnpj,livro.titulo,livro.idioma,livro.id_autor
from editora right join livro 
on editora.id_editora = livro.id_editora
union
select  editora.nome,editora.cidade,editora.cnpj,livro.titulo,livro.idioma,livro.id_autor
from editora left join livro 
on editora.id_editora = livro.id_editora;


desc autor;
desc livro;
desc editora; 


select autor.nome,livro.titulo,editora.nome
from autor inner join livro 
on autor.id_autor = livro.id_autor
inner join editora
on livro.id_editora = editora.id_editora;


select * from editora;
insert into editora (nome,cnpj,cidade) values("editora 1","00012458658","Campo Grande");

insert into editora (nome,cnpj,cidade) values("editora 2","1545165468","Rio de janeiro" );

insert into editora (nome,cnpj,cidade) values("editora 3","5798132168","amazonas");

insert into editora (nome,cnpj,cidade) values("editora 4","579846516","rio de janeiro");

insert into editora (nome,cnpj,cidade) values("editora 5","84561325","Sao paulo"); 

create database fabrica276;

create table colaborador (

	id_colaborador int not null auto_increment,
    matricula varchar (4) not null,
    nome varchar(100) not null ,
    cpf varchar(20) unique not null,
    email varchar(100) not null ,
    data_nasc date not null,
    data_admissao date not null,
    funcao varchar(100) not null,
    salario decimal(10,2),
    endereco varchar(100) not null,
    cep varchar(20) not null,
    cidade varchar(100) not null, 
    estado varchar(100) default "MS" not null ,
    sexo enum ('F','M','O'),
     constraint primary key (id_colaborador)
		

); 

select * from colaborador ;

insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("3372","Aleatorio sem cargo","994.958.950-81","aleatorio_sem_cargo@hotmail.com","1942-10-09","2022-10-15","","-8000","Rua Eunice dssos Reis Toledo","19097-575","Presidente Prudente","SP","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("3293","Andre Fellype Azevedo Da Silva Oliveira","143.163.100-03","coelhojogos@hotmail.com","2000-10-03","2022-10-15","Aluno","0","Rua Antônio Diogo","60182-532","Fortaleza","CE","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("3334","Aparecido Felix Marinho Junior","609.130.620-06","Aparecido@hotmail.com","2003-12-31","2022-10-18","Aluno","0","Travessa Lagoa Salgada","59135-707","Natal","RN","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("3338","Arthur Augusto Coelho Frantz","374.701.210-80","coelhojogos@hotmail.com","2000-10-03","2022-10-18","Aluno","0","Travessa dos carpinteiros","59135-707","Campo Grande","MS","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("6301","Arthur Simões De Andrade Teixeira","550.510.230-10","jotge123hhh@gmail.com","2009-09-09","2009-09-09","Aluno","-1500","Rua Cândido Anastácio Tomaselli","89257-155","Campo Grande","MS","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("3352","Emanuel Chagas Araujo","896.495.210-38","Emanuel@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Sargento Oséas Costa","57017-670","Campo Grande","MS","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("3479","Emanuelle Maria Da Costa Alexandre","655.785.170-56","Emanuele@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Sargento Oséas Costa","57017-670","Campo Grande","MS","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("7433","Guilherme carvalho schuindt","484.214.990-68","Guilherme@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Piracicaba","78070-570","Campo Grande","MS","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("8322","Igor savioli Albieri","733.564.590-58","Igor@gmail.com","2009-09-09","2009-09-09","Aluno","0","Quadra Quadra 56","72922-231","Campo Grande","MS","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("6582","Isabella Dáurea martins ribeiro","677.636.930-53","Isabella@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Santa Cruz","29122-310","Campo Grande","MS","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("5471","IZaltino Ojeda pereira","706.038.290-90","Izaltino@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Engenheiro Sena Machado","64039-070","Campo Grande","MS","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("6643","Joceyr Gomes Martins","909.213.720-00","Joceir@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Otávio Rocha","94020-120","Campo Grande","MS","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("3480","João carlos Gil","445.189.020-92","JÃOCARLOS@gmail.com","2009-09-09","2009-09-09","Aluno","0","Quadra Quadra 103 Área Especial 1","72600-330","Brasília","DF","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("7438","Joao pedro jara duprat","242.060.730-90","JÃOpedro@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Manoel Nobres","78125-440","Várzea Grande","MT","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("5167","Kelwyn matias minho","235.502.180-52","Kelwyn@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua José Antônio Pereira 1518","79002-930","Campo Grande","Ms","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("5812","Leandro cavalcante ribas","499.150.170-90","Leandro@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Heitor Laburú","79042-080","Campo Grande","Ms","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("6585","Luiz Guilherme Chimenes","915.790.920-20","LUIZ@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rodovia do Tapanã","84264-410","Campo Grande","Ms","O");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("5883","Mario soares neto","121.404.830-73","Marioneto@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Osvaldo Santiago","55604-020","Campo Grande","Ms","O");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("5993","Paulo eduardo jacob de andrade ","161.154.430-08","Paulo<RENES@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua João Murilo Leite","58037-548","Campo Grande","Ms","O");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("4876","rONEY hUDSON vALENTIM FAGUNDES MOREIRA","093.794.520-04","HUDSON@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Vinte e Nove","64041-150","Campo Grande","Ms","O");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("3321","tAYNARA MARTINES FERREIRA","035.390.400-72","tay@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Manaus","65907-160","Campo Grande","Ms","O");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("3495","THIAGO DOS SANTOS","133.193.450-87","THIAGO123@gmail.com","2009-09-09","2009-09-09","Aluno","0","Travessa Fialho","69907-512","Campo Grande","Ms","O");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("8320","vINICIUS MARTINS","344.175.120-51","MAINIRELAMONOSEMBRAÇO@gmail.com","2009-09-09","2009-09-09","Aluno","0","Vila São Pedro","66050-710","Campo Grande","Ms","O");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("8068","wANDERLEY TERRA","319.602.670-19","CARADOSHABURG@gmail.com","2009-09-09","2009-09-09","Aluno","0","Estrada Capim Melado","26176-090","Campo Grande","Ms","O");



use fabrica276 ; 

show databases ; 

use cadastro ;

use garagem ; 

show tables;

use biblioteca; 

show tables ;  

select * from colaborador;
 
use fabrica276 ;  



create table departamento (
	id_departamento int not null auto_increment  primary key ,
    nome_departamento varchar (100)

);

create table cargo (
	id_cargo int not null auto_increment  primary key ,
    nome_cargo varchar (100),
    id_departamento int not null

);

create table dependente (
	id_dependente int not null auto_increment  primary key ,
    certidao char (10),
    nome varchar(45),
    idade int (3),
    id_colaborador int (100) not null 
); 


describe dependente ;
select * from dependente;
insert into dependente (certidao,nome,idade,id_colaborador) values ("454621","MANO YI","2010/05/03",1);
insert into dependente (certidao,nome,idade,id_colaborador) values ("666","ATROX","2012/01/04",2);
insert into dependente (certidao,nome,idade,id_colaborador) values ("89657","IRELIA","2013/07/13",3);
insert into dependente (certidao,nome,idade,id_colaborador) values ("132654","RIVEN","2014/02/07",3);
insert into dependente (certidao,nome,idade,id_colaborador) values ("879811","DRAVEN","2014/04/23",2);
insert into dependente (certidao,nome,idade,id_colaborador) values ("789513425","JINX","2012/07/18",5);



insert into cargo (nome_cargo,id_departamento) values ("agiota","1");
insert into departamento (nome_departamento) values ("O LENDARIO DEPARTAMENTO VAZIO ! "); 
select * from cargo;
select * from colaborador ;
select * from departamento ;

update colaborador  set salario = 6999  where id_colaborador = 23 ; 

insert into departamento (nome_departamento) values ("cozinha"),("limpeza"),("juridico"),("coordenacao"),("secretaria"),("diretoria"),("tecnologia"),("padagogico"),("producao") ;
insert into cargo (nome_cargo , id_departamento) values ("cozinheira", "2" ),("fexineira", "3"),("acessor", "4"),("cordenador", "5" ),("secretaria", "6"),("diretor", "7"),("web designer", "8"),("professor", "9"),("desenvolvedor","8");
update colaborador  set sexo="F"  where id_colaborador = 21 ; 
alter table dependente modify column idade date not null;

alter table colaborador add column id_cargo int ;
alter table colaborador add column id_departamento int ;

select * from colaborador ;

show tables; 

select * from dependente;


select colaborador.id_colaborador,colaborador.nome,cargo.nome_cargo 
from colaborador inner join cargo
on colaborador.id_cargo = cargo.id_cargo;

select colaborador.id_colaborador,colaborador.nome,colaborador.id_departamento
from colaborador inner join departamento
on colaborador.id_departamento = departamento.id_departamento;

select colaborador.id_colaborador,colaborador.nome,dependente.nome,dependente.id_colaborador
from colaborador inner join dependente 
on colaborador.id_colaborador = dependente.id_colaborador; 

select * from colaborador;

select colaborador.nome,cargo.nome_cargo,departamento.nome_departamento
from colaborador inner join cargo 
on colaborador.id_cargo = cargo.id_cargo 
inner join departamento 
on colaborador.id_departamento = departamento.id_departamento; 

select colaborador.nome,colaborador.id_cargo
from colaborador inner join cargo 
on colaborador.id_cargo = ; 

SELECT c.*
FROM colaborador c
LEFT JOIN cargo cg ON c.id_cargo = cg.id_cargo
WHERE cg.id_cargo IS NULL;


select colaborador.nome,colaborador.id_cargo
from colaborador
left join cargo 
on colaborador.id_cargo = cargo.id_cargo where colaborador.id_cargo is NULL ; 

select colaborador.nome,colaborador.id_departamento
from colaborador
right join departamento 
on colaborador.id_departamento = departamento.id_departamento where departamento.id_departamento is null ; 

delete from departamento 
where id_departamento=12;

show tables ; 
select * from cargo;
select * from departamento;

select * from colaborador;

SELECT c.*, d.*
FROM colaborador c
RIGHT JOIN departamento d ON c.id_departamento = d.id_departamento
WHERE c.id_departamento IS NULL; 

select colaborador.*,departamento.*
from colaborador 
right join departamento on colaborador.id_departamento = departamento.id_departamento
where colaborador.id_departamento is null;


select colaborador.*,dependente.*
from colaborador 
left join dependente on colaborador.id_colaborador = dependente.id_colaborador 
where dependente.id_colaborador is null; 


ALTER TABLE dependente
modify COLUMN id_colaborador int (100) ;

SELECT colaborador.nome,salario
FROM colaborador
WHERE nome LIKE 'J%';

SELECT colaborador.nome,salario
FROM colaborador
WHERE nome LIKE '%a';

select count(*) as id_colaborador 
from colaborador; 

select min(salario) as colaborador
from colaborador;


SELECT min(DATE(idade)) AS idade
FROM dependente; 

select sum(salario)/count(id_colaborador) as media 
from colaborador; 

select * from colaborador
where (datediff(current_date,idade));  


select idade ,count(*) as quantidade from 
(select id_colaborador,round(datediff(current_date, date_nasc)/365)as idade from colaborador) as poçoca
grup




select * from colaborador ;

select * from dependente;




create database Netflix ;



create database garagem; 
use garagem;

create table pessoa (
	id_pessoa int not null auto_increment,
    nome varchar(100) not null,
    cpf char(11) unique not null,
    rg char(11) not null,
    email varchar(150),
    constraint primary key (id_pessoa)
    
    );
    
create table conta_extra(
	id_conta int not null auto_increment,
    nome varchar(100) not null,
    email varchar(100) not null,
    id_usuario int not null ,
    constraint primary key (id_conta),
    constraint foreign key (id_usuario) references usuarios (id_usuario)
);    

insert into conta_extra (nome,email,id_usuario) values("zés","emailzés@hotmail.com",99);
selecT * from usuarios;

show tables ;    
insert into pessoa (nome,cpf,rg,email) values ("wanderley","457812","123","wanderley-terra@gmail.com");    
insert into pessoa (nome,cpf,rg,email) values ("Arthur Simões","4485128","456","jorgefugitora@hotmail.com");
insert into pessoa (nome,cpf,rg) values ("jão","875496","87956");
insert into pessoa (nome,cpf,rg,email) values ("vinicios","22123","2223365","main-irelia@hotmail.com");
insert into pessoa values (default, "igor silva","3232","542432","igor@hotmail.com");
insert into pessoa (nome,cpf,rg,email) values ("Arthur Augusto Coelho Frantz","0215148","21568","coelhojogos@hotmail.com");
insert into pessoa (nome,cpf,rg,email) values ("thiago","3949282","97681495","tiago@hotmail.com");
insert into pessoa (nome,cpf,rg,email) values ("zé","5683246","78464512","zé@hotmail.com");
insert into pessoa (nome,cpf,rg,email) values ("nome aleatorio","47269d433","4827863228","nomealeatorio@hotmail.com");

select * from pessoa;  
select * from carro;

create table carro(
	id_carro int not null auto_increment,
    marca varchar(50) not null,
    modelo varchar(50) not null,
	portas char(4) not null,
    placa char(8) not null,
    id_pessoa int not null,
    constraint primary key (id_carro), 
    constraint foreign key (id_pessoa) references pessoa (id_pessoa)
    
); 
    
alter table carro add column id_pessoa int not null;    
insert into carro (marca,modelo,portas,placa,id_pessoa) values ("volks","Gol","3","hhh-0000",3); 
insert into carro (marca,modelo,portas,placa,id_pessoa) values("Chevrolet","Celta","4","hhh-1000","1");   
select * from carro;

alter table carro add constraint id_fk_pessoa
foreign key(id_pessoa) references pessoa (id_pessoa);

drop table carro ;
    
show tables ;	


select current_date();
select current_timestamp();
select current_time();
select now();


create table login(

	id_login int not null auto_increment, 
    email varchar(100) not null,
    senha varchar(100) not null,
    logado timestamp default current_timestamp(),
    
    constraint primary key (id_login)
    
);


insert into login (email,senha) values ("art55hur@solomons.com","4455654566"); 

select * from login;

select email, date_format(logado,'%d%m/%Y') as ultimo_login from login; 

select email, date_format(logado,'%D') as ultimo_login from login; 


insert into login (email,senha,logado) values("dasdsa","dsadsa",current_date()) ;


create table funcionario(
id int not null auto_increment,
nome varchar(100) not null,
data_nasc date not null,
constraint primary key (id)
);


insert into funcionario (nome,data_nasc) values ("dsadsadsadsa","1985-05-12");

show databases;

select * from funcionario;

select id,nome,
timestampdiff(YEAR,data_nasc,now()) as idade 
from funcionario; 


show databases; 

use garagem; 

show tables;

create table produtosBK(
	id int not null auto_increment,
    nome varchar(100) not null,
    preco decimal(10,2) not null,
    constraint primary key (id)
    
); 

select * from produtosBK; 

insert into produtosBK
select null,nome,preco from produtos;


insert into produtos values (default,"morango",7);
insert into produtos values (default, "laranja",10);
insert into produtos values (default, "melancia",12); 
insert into produtos (nome,preco) values ("abacaxi",5); 


select * from produtos where preco > 3 ; 


select id,nome from produtos
where preco in 
(select max(preco) from produtos);    




create database biblioteca; 
use biblioteca;

create table livro(
	id_livro int not null auto_increment,
    titulo varchar(100) not null, 
    descricao text not null,
    idioma varchar(50),
    paginas int ,
	constraint primary key (id_livro)
);  

select * from livro; 
select * from autor;

insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("livro 1","o primeiro livro a ser cadastrado","portugues","397","1","1");
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("livro2","o segundo livro a ser cadastrado","portugues","587",1,2);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("livro 3","o terceiro livro a ser cadastrado","portugues","152",3,1);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("livro 4","o quarto livro a ser cadastrado","portugues","986",3,3);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("livro 5","o quinto livro a ser cadastrado","portugues","214",4,2);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("livro 6","o sexto livro a ser cadastrado ","portugues","159",5,3);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("livro 7","o setimo livro a ser cadastrado","portugues","258",6,4);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("第 8 冊","第八本書要登記","chines","859",7,4);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("livro 8","o setimo livro a ser cadastrado","portugues","298",5,7);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("livro 9","o setimo livro a ser cadastrado","portugues","558",7,5);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("dsadasdsadsa","o setimo ldsadsaivro a ser cadastrado","portugues","558",99,99);
insert into livro (titulo,descricao,idioma,paginas,id_autor,id_editora) values ("dsadasdsadsa","livro cadastrado ERRADO ! ","portugues","558",999,999);

select * from editora as e
inner join livro as l 
on e.id_editora = l.id_editora;

select l.titulo,e.nome from editora as e
inner join livro as l 
on e.id_editora = l.id_editora;

select * from autor as a
inner join livro as l 
on a.id_autor = l.id_autor; 

select a.nome,l.titulo from autor as a 
inner join livro as l 
on a.id_autor = l.id_autor
order by a.nome asc;
 
select autor.nome,autor.email,livro.titulo,livro.idioma,livro.paginas,editora.nome
from autor inner join livro 
on autor.id_autor = livro.id_autor
inner join editora 
on editora.id_editora = livro.id_editora;


desc livro;


alter table livro add column id_autor int not null ; 
alter table livro add column id_editora int not null;
create table autor (
	id_autor int not null auto_increment,
    nome varchar(100) not null,
    email varchar(100) not null,
    constraint primary key (id_autor) 
    
);

insert into autor (nome,email) values ("autor 1","emailaut1@hotmail.com");
insert into autor (nome,email) values ("autor 2","emailaut2@hotmail.com");
insert into autor (nome,email) values ("autor 3","emailaut3@hotmail.com");
insert into autor (nome,email) values ("autor 4","emailaut4@hotmail.com");
insert into autor (nome,email) values ("autor 5","emailaut5@hotmail.com");
insert into autor (nome,email) values ("autor 6","emailaut6@hotmail.com");
insert into autor (nome,email) values ("autor zé","zé@hotmail.com");
insert into autor (nome,email) values ("autorerros","erro@hotmail.com");
insert into autor (nome,email) values ("maisumautor","maisum@hotmail.com");

create table editora(
	id_editora int not null auto_increment,
    nome varchar(100) not null,
    cnpj char(14) not null,
    cidade varchar(100) not null,
    constraint primary key (id_editora)
    
); 

select * from livro;

select  editora.nome,editora.cidade,editora.cnpj,livro.titulo,livro.idioma,livro.id_autor
from editora inner join livro 
on editora.id_editora = livro.id_editora;

show tables;

select  editora.nome,editora.cidade,editora.cnpj,livro.titulo,livro.idioma,livro.id_autor
from editora right join livro 
on editora.id_editora = livro.id_editora
union
select  editora.nome,editora.cidade,editora.cnpj,livro.titulo,livro.idioma,livro.id_autor
from editora left join livro 
on editora.id_editora = livro.id_editora;


desc autor;
desc livro;
desc editora; 


select autor.nome,livro.titulo,editora.nome
from autor inner join livro 
on autor.id_autor = livro.id_autor
inner join editora
on livro.id_editora = editora.id_editora;


select * from editora;
insert into editora (nome,cnpj,cidade) values("editora 1","00012458658","Campo Grande");

insert into editora (nome,cnpj,cidade) values("editora 2","1545165468","Rio de janeiro" );

insert into editora (nome,cnpj,cidade) values("editora 3","5798132168","amazonas");

insert into editora (nome,cnpj,cidade) values("editora 4","579846516","rio de janeiro");

insert into editora (nome,cnpj,cidade) values("editora 5","84561325","Sao paulo"); 

create database fabrica276;

create table colaborador (

	id_colaborador int not null auto_increment,
    matricula varchar (4) not null,
    nome varchar(100) not null ,
    cpf varchar(20) unique not null,
    email varchar(100) not null ,
    data_nasc date not null,
    data_admissao date not null,
    funcao varchar(100) not null,
    salario decimal(10,2),
    endereco varchar(100) not null,
    cep varchar(20) not null,
    cidade varchar(100) not null, 
    estado varchar(100) default "MS" not null ,
    sexo enum ('F','M','O'),
     constraint primary key (id_colaborador)
		

); 

select * from colaborador ;

insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("3372","Aleatorio sem cargo","994.958.950-81","aleatorio_sem_cargo@hotmail.com","1942-10-09","2022-10-15","","-8000","Rua Eunice dssos Reis Toledo","19097-575","Presidente Prudente","SP","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("3293","Andre Fellype Azevedo Da Silva Oliveira","143.163.100-03","coelhojogos@hotmail.com","2000-10-03","2022-10-15","Aluno","0","Rua Antônio Diogo","60182-532","Fortaleza","CE","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("3334","Aparecido Felix Marinho Junior","609.130.620-06","Aparecido@hotmail.com","2003-12-31","2022-10-18","Aluno","0","Travessa Lagoa Salgada","59135-707","Natal","RN","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("3338","Arthur Augusto Coelho Frantz","374.701.210-80","coelhojogos@hotmail.com","2000-10-03","2022-10-18","Aluno","0","Travessa dos carpinteiros","59135-707","Campo Grande","MS","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("6301","Arthur Simões De Andrade Teixeira","550.510.230-10","jotge123hhh@gmail.com","2009-09-09","2009-09-09","Aluno","-1500","Rua Cândido Anastácio Tomaselli","89257-155","Campo Grande","MS","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("3352","Emanuel Chagas Araujo","896.495.210-38","Emanuel@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Sargento Oséas Costa","57017-670","Campo Grande","MS","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("3479","Emanuelle Maria Da Costa Alexandre","655.785.170-56","Emanuele@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Sargento Oséas Costa","57017-670","Campo Grande","MS","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("7433","Guilherme carvalho schuindt","484.214.990-68","Guilherme@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Piracicaba","78070-570","Campo Grande","MS","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("8322","Igor savioli Albieri","733.564.590-58","Igor@gmail.com","2009-09-09","2009-09-09","Aluno","0","Quadra Quadra 56","72922-231","Campo Grande","MS","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("6582","Isabella Dáurea martins ribeiro","677.636.930-53","Isabella@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Santa Cruz","29122-310","Campo Grande","MS","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("5471","IZaltino Ojeda pereira","706.038.290-90","Izaltino@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Engenheiro Sena Machado","64039-070","Campo Grande","MS","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("6643","Joceyr Gomes Martins","909.213.720-00","Joceir@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Otávio Rocha","94020-120","Campo Grande","MS","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("3480","João carlos Gil","445.189.020-92","JÃOCARLOS@gmail.com","2009-09-09","2009-09-09","Aluno","0","Quadra Quadra 103 Área Especial 1","72600-330","Brasília","DF","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("7438","Joao pedro jara duprat","242.060.730-90","JÃOpedro@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Manoel Nobres","78125-440","Várzea Grande","MT","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("5167","Kelwyn matias minho","235.502.180-52","Kelwyn@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua José Antônio Pereira 1518","79002-930","Campo Grande","Ms","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("5812","Leandro cavalcante ribas","499.150.170-90","Leandro@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Heitor Laburú","79042-080","Campo Grande","Ms","M");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("6585","Luiz Guilherme Chimenes","915.790.920-20","LUIZ@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rodovia do Tapanã","84264-410","Campo Grande","Ms","O");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("5883","Mario soares neto","121.404.830-73","Marioneto@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Osvaldo Santiago","55604-020","Campo Grande","Ms","O");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("5993","Paulo eduardo jacob de andrade ","161.154.430-08","Paulo<RENES@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua João Murilo Leite","58037-548","Campo Grande","Ms","O");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("4876","rONEY hUDSON vALENTIM FAGUNDES MOREIRA","093.794.520-04","HUDSON@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Vinte e Nove","64041-150","Campo Grande","Ms","O");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("3321","tAYNARA MARTINES FERREIRA","035.390.400-72","tay@gmail.com","2009-09-09","2009-09-09","Aluno","0","Rua Manaus","65907-160","Campo Grande","Ms","O");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("3495","THIAGO DOS SANTOS","133.193.450-87","THIAGO123@gmail.com","2009-09-09","2009-09-09","Aluno","0","Travessa Fialho","69907-512","Campo Grande","Ms","O");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("8320","vINICIUS MARTINS","344.175.120-51","MAINIRELAMONOSEMBRAÇO@gmail.com","2009-09-09","2009-09-09","Aluno","0","Vila São Pedro","66050-710","Campo Grande","Ms","O");
insert into colaborador (matricula,nome,cpf,email,data_nasc,data_admissao,funcao,salario,endereco,cep,cidade,estado,sexo) values ("8068","wANDERLEY TERRA","319.602.670-19","CARADOSHABURG@gmail.com","2009-09-09","2009-09-09","Aluno","0","Estrada Capim Melado","26176-090","Campo Grande","Ms","O");



use fabrica276 ; 

show databases ; 

use cadastro ;

use garagem ; 

show tables;

use biblioteca; 

show tables ;  

select * from colaborador;
 
use fabrica276 ;  



create table departamento (
	id_departamento int not null auto_increment  primary key ,
    nome_departamento varchar (100)

);

create table cargo (
	id_cargo int not null auto_increment  primary key ,
    nome_cargo varchar (100),
    id_departamento int not null

);

create table dependente (
	id_dependente int not null auto_increment  primary key ,
    certidao char (10),
    nome varchar(45),
    idade int (3),
    id_colaborador int (100) not null 
); 


describe dependente ;
select * from dependente;
insert into dependente (certidao,nome,idade,id_colaborador) values ("454621","MANO YI","2010/05/03",1);
insert into dependente (certidao,nome,idade,id_colaborador) values ("666","ATROX","2012/01/04",2);
insert into dependente (certidao,nome,idade,id_colaborador) values ("89657","IRELIA","2013/07/13",3);
insert into dependente (certidao,nome,idade,id_colaborador) values ("132654","RIVEN","2014/02/07",3);
insert into dependente (certidao,nome,idade,id_colaborador) values ("879811","DRAVEN","2014/04/23",2);
insert into dependente (certidao,nome,idade,id_colaborador) values ("789513425","JINX","2012/07/18",5);



insert into cargo (nome_cargo,id_departamento) values ("agiota","1");
insert into departamento (nome_departamento) values ("O LENDARIO DEPARTAMENTO VAZIO ! "); 
select * from cargo;
select * from colaborador ;
select * from departamento ;

update colaborador  set salario = 6999  where id_colaborador = 23 ; 

insert into departamento (nome_departamento) values ("cozinha"),("limpeza"),("juridico"),("coordenacao"),("secretaria"),("diretoria"),("tecnologia"),("padagogico"),("producao") ;
insert into cargo (nome_cargo , id_departamento) values ("cozinheira", "2" ),("fexineira", "3"),("acessor", "4"),("cordenador", "5" ),("secretaria", "6"),("diretor", "7"),("web designer", "8"),("professor", "9"),("desenvolvedor","8");
update colaborador  set sexo="F"  where id_colaborador = 21 ; 
alter table dependente modify column idade date not null;

alter table colaborador add column id_cargo int ;
alter table colaborador add column id_departamento int ;

select * from colaborador ;

show tables; 

select * from dependente;


select colaborador.id_colaborador,colaborador.nome,cargo.nome_cargo 
from colaborador inner join cargo
on colaborador.id_cargo = cargo.id_cargo;

select colaborador.id_colaborador,colaborador.nome,colaborador.id_departamento
from colaborador inner join departamento
on colaborador.id_departamento = departamento.id_departamento;

select colaborador.id_colaborador,colaborador.nome,dependente.nome,dependente.id_colaborador
from colaborador inner join dependente 
on colaborador.id_colaborador = dependente.id_colaborador; 

select * from colaborador;

select colaborador.nome,cargo.nome_cargo,departamento.nome_departamento
from colaborador inner join cargo 
on colaborador.id_cargo = cargo.id_cargo 
inner join departamento 
on colaborador.id_departamento = departamento.id_departamento; 

select colaborador.nome,colaborador.id_cargo
from colaborador inner join cargo 
on colaborador.id_cargo = ; 

SELECT c.*
FROM colaborador c
LEFT JOIN cargo cg ON c.id_cargo = cg.id_cargo
WHERE cg.id_cargo IS NULL;


select colaborador.nome,colaborador.id_cargo
from colaborador
left join cargo 
on colaborador.id_cargo = cargo.id_cargo where colaborador.id_cargo is NULL ; 

select colaborador.nome,colaborador.id_departamento
from colaborador
right join departamento 
on colaborador.id_departamento = departamento.id_departamento where departamento.id_departamento is null ; 

delete from departamento 
where id_departamento=12;

show tables ; 
select * from cargo;
select * from departamento;

select * from colaborador;

SELECT c.*, d.*
FROM colaborador c
RIGHT JOIN departamento d ON c.id_departamento = d.id_departamento
WHERE c.id_departamento IS NULL; 

select colaborador.*,departamento.*
from colaborador 
right join departamento on colaborador.id_departamento = departamento.id_departamento
where colaborador.id_departamento is null;


select colaborador.*,dependente.*
from colaborador 
left join dependente on colaborador.id_colaborador = dependente.id_colaborador 
where dependente.id_colaborador is null; 


ALTER TABLE dependente
modify COLUMN id_colaborador int (100) ;

SELECT colaborador.nome,salario
FROM colaborador
WHERE nome LIKE 'J%';

SELECT colaborador.nome,salario
FROM colaborador
WHERE nome LIKE '%a';

select count(*) as id_colaborador 
from colaborador; 

select min(salario) as colaborador
from colaborador;


SELECT min(DATE(idade)) AS idade
FROM dependente; 

select sum(salario)/count(id_colaborador) as media 
from colaborador; 

select * from colaborador
where (datediff(current_date,idade));  


select idade ,count(*) as quantidade from 
(select id_colaborador,round(datediff(current_date, date_nasc)/365)as idade from colaborador) as poçoca
grup




select * from colaborador ;

select * from dependente;




create database Netflix ;  

use Netflix ;  

drop table play;


create table play (
	id_play int not null auto_increment primary key,
    data_assistida datetime default current_timestamp(),
	id_usuario int ,
	id_serie int
    

); 

desc play;
drop table play;
select * from play;
show tables ; 

create table series (
	id_serie int not null auto_increment primary key, 
    nome varchar(100),
    sinopse varchar(100),
    temporadas smallint

); 

drop table usuarios ;

create table usuarios(
	id_usuario int not null auto_increment primary key ,
    cpf varchar (11),
    nome varchar(100),
    email varchar(100),
    senha varchar(100)

);


insert into usuarios (cpf,nome,email,senha) values ("12345678985","arthur","emailaleatorio@hotmail.com","02120505*"); 

-- Inserção 1
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765432101", "Maria", "maria@gmail.com", "abc123");

-- Inserção 2
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("45678912345", "João", "joao@yahoo.com", "senha123");

-- Inserção 3
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("54321678901", "Pedro", "pedro@gmail.com", "password");

-- Inserção 4
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765432102", "Ana", "ana@hotmail.com", "qwerty");

-- Inserção 5
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("32165498701", "Lucas", "lucas@gmail.com", "123456");

-- Inserção 6
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("12378945601", "Mariana", "mariana@yahoo.com", "senha1234");

-- Inserção 7
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765432103", "Carlos", "carlos@gmail.com", "abcxyz");

-- Inserção 8
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("45632178901", "Larissa", "larissa@hotmail.com", "senha12345");

-- Inserção 9
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765432104", "Fernando", "fernando@yahoo.com", "password123");

-- Inserção 10
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98732165401", "Gabriela", "gabriela@gmail.com", "testando");

-- Inserção 11
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765432105", "Rafael", "rafael@hotmail.com", "123abc");

-- Inserção 12
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("65498732101", "Julia", "julia@yahoo.com", "senha4321");

-- Inserção 13
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765432106", "Luiz", "luiz@gmail.com", "qwe123");

-- Inserção 14
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765412301", "Beatriz", "beatriz@hotmail.com", "abcdef");

-- Inserção 15
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("78932165401", "Matheus", "matheus@gmail.com", "senha123456");

-- Inserção 16
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765432107", "Isabela", "isabela@yahoo.com", "password1234");

-- Inserção 17
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765412302", "Guilherme", "guilherme@gmail.com", "123qwe");

-- Inserção 18
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765432108", "Camila", "camila@hotmail.com", "senha987");  

-- Inserção 1
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765432101", "Maria", "maria@gmail.com", "abc123");

-- Inserção 2
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("45678912345", "João", "joao@yahoo.com", "senha123");

-- Inserção 3
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("54321678901", "Pedro", "pedro@gmail.com", "password");

-- Inserção 4
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765432102", "Ana", "ana@hotmail.com", "qwerty");

-- Inserção 5
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("32165498701", "Lucas", "lucas@gmail.com", "123456");

-- Inserção 6
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("12378945601", "Mariana", "mariana@yahoo.com", "senha1234");

-- Inserção 7
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765432103", "Carlos", "carlos@gmail.com", "abcxyz");

-- Inserção 8
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("45632178901", "Larissa", "larissa@hotmail.com", "senha12345");

-- Inserção 9
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765432104", "Fernando", "fernando@yahoo.com", "password123");

-- Inserção 10
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98732165401", "Gabriela", "gabriela@gmail.com", "testando");

-- Inserção 11
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765432105", "Rafael", "rafael@hotmail.com", "123abc");

-- Inserção 12
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("65498732101", "Julia", "julia@yahoo.com", "senha4321");

-- Inserção 13
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765432106", "Luiz", "luiz@gmail.com", "qwe123");

-- Inserção 14
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765412301", "Beatriz", "beatriz@hotmail.com", "abcdef");

-- Inserção 15
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("78932165401", "Matheus", "matheus@gmail.com", "senha123456");

-- Inserção 16
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765432107", "Isabela", "isabela@yahoo.com", "password1234");

-- Inserção 17
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765412302", "Guilherme", "guilherme@gmail.com", "123qwe");

-- Inserção 18
INSERT INTO usuarios (cpf, nome, email, senha) VALUES ("98765432108", "Camila", "camila@hotmail.com", "senha987");

-- Inserção 1
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Breaking Bad", "Um professor de química se transforma em um poderoso chefão das drogas", 5);

-- Inserção 2
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Game of Thrones", "Uma batalha pelo Trono de Ferro em um mundo de fantasia", 8);

-- Inserção 3
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Friends", "Um grupo de amigos compartilha momentos engraçados e emocionantes em Nova York", 10);

-- Inserção 4
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Stranger Things", "Aventuras sobrenaturais de um grupo de crianças nos anos 80", 4);

-- Inserção 5
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Breaking Bad", "Um professor de química se transforma em um poderoso chefão das drogas", 5);

-- Inserção 6
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Sherlock", "Um detetive genial soluciona casos complexos em Londres", 4);

-- Inserção 7
INSERT INTO series (nome, sinopse, temporadas) VALUES ("The Office", "Uma comédia que retrata o cotidiano de uma empresa de papel", 9);

-- Inserção 8
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Stranger Things", "Aventuras sobrenaturais de um grupo de crianças nos anos 80", 4);

-- Inserção 9
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Narcos", "A ascensão e queda do império do tráfico de drogas de Pablo Escobar", 3);

-- Inserção 10
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Black Mirror", "Contos futuristas que exploram os impactos da tecnologia na sociedade", 5);

-- Inserção 11
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Friends", "Um grupo de amigos compartilha momentos engraçados e emocionantes em Nova York", 10);

-- Inserção 12
INSERT INTO series (nome, sinopse, temporadas) VALUES ("The Crown", "A história da rainha Elizabeth II e os desafios de seu reinado", 5);

-- Inserção 13
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Peaky Blinders", "Uma gangue de criminosos no pós-Primeira Guerra Mundial", 6);

-- Inserção 14
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Chernobyl", "Os eventos do desastre nuclear de Chernobyl em 1986", 1);

-- Inserção 15
INSERT INTO series (nome, sinopse, temporadas) VALUES ("La Casa de Papel", "Um grupo de criminosos executa um grande assalto à Casa da Moeda da Espanha", 5);

-- Inserção 16
INSERT INTO series (nome, sinopse, temporadas) VALUES ("The Witcher", "As aventuras do bruxo Geralt de Rivia em um mundo de fantasia", 2);

-- Inserção 17
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Stranger Things", "Aventuras sobrenaturais de um grupo de crianças nos anos 80", 4);

-- Inserção 18
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Money Heist", "Um grupo de criminosos executa um assalto à Casa da Moeda da Espanha", 5);

-- Inserção 19
INSERT INTO series (nome, sinopse, temporadas) VALUES ("The Mandalorian", "As aventuras de um caçador de recompensas na galáxia de Star Wars", 3);

-- Inserção 20
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Breaking Bad", "Um professor de química se transforma em um poderoso chefão das drogas", 5);

-- Inserção 21
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Friends", "Um grupo de amigos compartilha momentos engraçados e emocionantes em Nova York", 10);

-- Inserção 22
INSERT INTO series (nome, sinopse, temporadas) VALUES ("The Crown", "A história da rainha Elizabeth II e os desafios de seu reinado", 5);

-- Inserção 23
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Sherlock", "Um detetive genial soluciona casos complexos em Londres", 4);

-- Inserção 24
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Stranger Things", "Aventuras sobrenaturais de um grupo de crianças nos anos 80", 4);

-- Inserção 25
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Black Mirror", "Contos futuristas que exploram os impactos da tecnologia na sociedade", 5);

-- Inserção 26
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Game of Thrones", "Uma batalha pelo Trono de Ferro em um mundo de fantasia", 8);

-- Inserção 27
INSERT INTO series (nome, sinopse, temporadas) VALUES ("The Office", "Uma comédia que retrata o cotidiano de uma empresa de papel", 9);

-- Inserção 28
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Narcos", "A ascensão e queda do império do tráfico de drogas de Pablo Escobar", 3);

-- Inserção 29
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Peaky Blinders", "Uma gangue de criminosos no pós-Primeira Guerra Mundial", 6);

-- Inserção 30
INSERT INTO series (nome, sinopse, temporadas) VALUES ("Stranger Things", "Aventuras sobrenaturais de um grupo de crianças nos anos 80", 4); 

desc play ;

-- Inserção 1
INSERT INTO play (id_usuario, id_serie, data_assistida) VALUES (1, 1, '2023-06-20');

-- Inserção 2
INSERT INTO play (id_usuario, id_serie, data_assistida) VALUES (2, 3, '2023-06-19');

-- Inserção 3
INSERT INTO play (id_usuario, id_serie, data_assistida) VALUES (3, 2, '2023-06-18');

-- Inserção 4
INSERT INTO play (id_usuario, id_serie, data_assistida) VALUES (4, 4, '2023-06-17');

-- Inserção 5
INSERT INTO play (id_usuario, id_serie, data_assistida) VALUES (5, 1, '2023-06-16');

-- Inserção 6
INSERT INTO play (id_usuario, id_serie, data_assistida) VALUES (1, 5, '2023-06-15');

-- Inserção 7
INSERT INTO play (id_usuario, id_serie, data_assistida) VALUES (2, 7, '2023-06-14');

-- Inserção 8
INSERT INTO play (id_usuario, id_serie, data_assistida) VALUES (3, 6, '2023-06-13');

-- Inserção 9
INSERT INTO play (id_usuario, id_serie, data_assistida) VALUES (4, 9, '2023-06-12');

-- Inserção 10
INSERT INTO play (id_usuario, id_serie, data_assistida) VALUES (5, 8, '2023-06-11');

-- Inserção 11
INSERT INTO play (id_usuario, id_serie, data_assistida) VALUES (1, 11, '2023-06-10');

-- Inserção 12
INSERT INTO play (id_usuario, id_serie, data_assistida) VALUES (2, 10, '2023-06-09');

-- Inserção 13
INSERT INTO play (id_usuario, id_serie, data_assistida) VALUES (3, 13, '2023-06-08');

-- Inserção 14
INSERT INTO play (id_usuario, id_serie, data_assistida) VALUES (4, 12, '2023-06-07');

-- Inserção 15
INSERT INTO play (id_usuario, id_serie, data_assistida) VALUES (5, 15, '2023-06-06'); 


#1
select usuarios.id_usuario,usuarios.nome,play.id_play
from usuarios inner join play
on usuarios.id_usuario = play.id_usuario ;

select usuarios.id_usuario,usuarios.nome,play.id_play
from usuarios left join play
on usuarios.id_usuario = play.id_usuario ;

#2
select play.id_serie,series.nome
from play inner join series 
on play.id_serie = series.id_serie;

#3
select usuarios.nome,series.id_serie,series.nome,data_assistida,usuarios.email,usuarios.senha
from usuarios inner join play 
on usuarios.id_usuario = play.id_usuario
inner join series 
on series.id_serie = play.id_serie;






select * from usuarios;
select * from series; 
select * from play;


Importando arquivos CSV para banco de dados ====================


LOAD DATA INFILE '/var/lib/mysql-files/csv_teste.csv'
INTO TABLE carro
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

===============================

sudo chmod 777 /var/lib/mysql-files  







LOAD DATA INFILE '/var/lib/mysql-files/titanic.csv'
INTO TABLE passengers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
 
 
 
 
create database olimpiadas;
use olimpiadas;

CREATE TABLE atletas (
id int not null auto_increment,
nome varchar(40),
modalidade varchar(40),
idade int,
peso decimal(5,2),
altura decimal(3,2),
medalhas int,
nacionalidade char(3),
constraint primary key (id)
); 

insert into atletas values (default, "Marcelo Huertas","Basquete",28,105,1.90,7,"BRA");
insert into atletas values (default, "Takaro Nomura","Katate",31,79,1.80,17,"JPN");
insert into atletas values (default, "Joseph Augustin","Karate",23,72,1.77,8,"FRA");
insert into atletas values (default, "Sophie Dominique","Volei",23,70,1.79,12,"FRA");
insert into atletas values (default, "Juan Carlos Angel","Volei",26,76,1.88,4,"ARG");
insert into atletas values (default, "Manoel Hernandes","Judo",31,83,1.98,2,"ARG");
insert into atletas values (default, "Amara Zuri","Basquete",32,86,1.95,1,"ZAF");
insert into atletas values (default, "Kornelia Ender","Natação",27,69,1.76,9,"DEU");
insert into atletas values (default, "Oscar Schmidt","Basquete",58,58,2.05,12,"BRA");
insert into atletas values (default, "Natasha Hoffmann","Natação",25,69,1.78,10,"DEU");
insert into atletas values (default, "Maria Fernandes","Handebol",26,75,1.79,11,"ESP");
insert into atletas values (default, "Maria Mendonza","Handebol",29,64,1.68,15,"CUB");
insert into atletas values (default, "Maria Carmen","Handebol",19,65,1.69,3,"ESP");
insert into atletas values (default, "Elijah Philips","Remo",22,66,1.67,7,"USA");
insert into atletas values (default, "Noah Oliver","Natação",30,101,1.98,8,"USA");
insert into atletas values (default, "Mike James","Basquete",24,102,1.99,9,"USA");
insert into atletas values (default, "Francesco Rossi","Basquete",34,100,1.90,11,"ITA");
insert into atletas values (default, "Bohdan Beneys","Atletismo",30,89,1.82,10,"SWE");
insert into atletas values (default, "Arnost Bedrich","Atletismo",21,75,1.83,13,"CZE");
insert into atletas values (default, "Jose Rodriguez","Triatlo",23,88,1.84,1,"VEN"); 


select * from atletas;  



create function multiplica(a int, b int)
returns int 
deterministic
return a * b; 

create function adicao(a int, b int)
returns int 
deterministic
return a + b;

create function dividir(a int, b int)
returns int 
deterministic
return a / b;  

create function coisas (x int , y int ,b int )
returns float
deterministic
return (x+y)/2;

select coisas (10,20,2) as result;
select multiplica(100,25) as result;
select adicao (100,30) as result ; 
select dividir (100,10) as result;

select count(id) into @qnt from atletas;

select @qnt; 

select multiplica(@qnt,10) as contas; 

select * from atletas; 


select min(idade) from atletas ;
select max(idade) from atletas ; 
select avg(idade) from atletas ;
select sum(idade) from atletas ;

select nome from atletas where nacionalidade = "bra";   

select sum(medalhas) as medalhas,nacionalidade
from atletas group by nacionalidade
order by medalhas desc; 

select count(id) as numero, modalidade 
from atletas group by modalidade; 

select id,nome,modalidade,idade,peso from atletas;  


select id,nome,modalidade,idade,(idade * 2) as dobro_da_idade,peso from atletas; 

select id,nome,modalidade,idade,peso,(peso  / (altura * altura)) as imc from atletas; 


 

alter table atletas add column cpf char (11);

update atletas set cpf = "111111" where id >= 1; 


create view vw_tabela_fake 
as select id,nome,modalidade,idade,peso from atletas; 


select * from vw_tabela_fake;
 
 


select nome from atletas where medalhas = max(medalhas); 


select nome,idade,peso,altura from atletas;  




create database e_commerce;

create table cliente (
	
    id_cliente int primary key , 
    nome varchar(100),
    email varchar(100),
    cpf char(11),
    endereco varchar(150),
    cidade varchar(100),
    estado char(2),
    data_nasc date

); 
drop table cliente ;

create table pedido(

	id_pedido int primary key,
    id_cliente int,
    status varchar(50),
    data_pedido date,
    constraint foreign key (id_cliente) references cliente (id_cliente) 

);

drop table pedido ; 

alter table modify column id_pedido int primary key auto_increment; 

create table pedido_item (

	id_pedido_item int primary key, 
    quantidade int,
    id_pedido int,
    id_produto int,
    constraint foreign key (id_pedido) references pedido (id_pedido),
    constraint foreign key (id_produto) references  produto (id_produto)
	
); 



create table produto (

	id_produto int primary key,
    nome varchar(100),
    descricao text,
    categoria varchar(50),
    preco decimal(10,2),
    estoque int(5)

); 




create table cliente(
	id_cliente int not null auto_increment, 
	nome varchar(100) not null, 
	email varchar(100) not null, 
	cpf char(12) not null, 
	endereco varchar(100) not null, 
	cidade varchar(100) not null, 
	estado char(2), 
	data_nasc date not null,
	constraint primary key(id_cliente)
);



create database ecomerce;

use ecomerce;


create table cliente(
	id_cliente int not null auto_increment, 
	nome varchar(100) not null, 
	email varchar(100) not null, 
	cpf char(12) not null, 
	endereco varchar(100) not null, 
	cidade varchar(100) not null, 
	estado char(2), 
	data_nasc date not null,
	constraint primary key(id_cliente)
);

create table produto (
	id_produto int not null auto_increment, 
	nome varchar(100) not null, 
	descricao text not null, 
	categoria varchar(50) not null,
	preco decimal(10,2) not null, 
	estoque int(5) not null,
    constraint primary key(id_produto)
); 


CREATE TABLE pedido(
	id_pedido int not null auto_increment,
	id_cliente int not null,
	status varchar(50) not null,
	data_pedido date,
    constraint primary key (id_pedido),
    constraint foreign key fk_cliente (id_cliente) references cliente (id_cliente)
);


CREATE TABLE pedido_item(
	id_pedido_item int not null auto_increment,
	id_pedido int not null,
	id_produto int not null,
	quantidade int not null,
    constraint primary key (id_pedido_item,id_pedido),
    constraint foreign key fk_produto (id_produto) references produto(id_produto)
);

select * from cliente ; 



insert into cliente (id_cliente, nome, email, cpf, endereco, cidade, estado, data_nasc) values (1, 'Ana Silva', 'anasilva@codandosimples.com', '12345678911', 'Rua Bahia, 10', 'Curitiba', 'PR', '1990-10-25');
insert into cliente (id_cliente, nome, email, cpf, endereco, cidade, estado, data_nasc) values (2, 'Roberto Nunes', 'ronunes@codandosimples.com', '32165498722', 'Rua Amazonas, 280', 'Campinas', 'SP', '1992-8-6');
insert into cliente (id_cliente, nome, email, cpf, endereco, cidade, estado, data_nasc) values (3, 'Paula Oliveira', 'paula123@codandosimples.com', '98765432188', 'Rua Castro Alves, 50', 'Valinhos', 'SP', '1989-10-15');
insert into cliente (id_cliente, nome, email, cpf, endereco, cidade, estado, data_nasc) values (4, 'Carlos Santos', 'carlos@codandosimples.com', '18865498732', 'Rua Santa Rita, 147', 'Barbacena', 'MG', '1985-5-20');
insert into cliente (id_cliente, nome, email, cpf, endereco, cidade, estado, data_nasc) values (5, 'Roberta Marques', 'romarques@codandosimples.com', '45691198732', 'Rua Boa Vista, 56', 'Ipatinga', 'MG', '1983-11-4');
insert into cliente (id_cliente, nome, email, cpf, endereco, cidade, estado, data_nasc) values (6, 'Júnior Soares', 'jusoares@codandosimples.com', '33372298755', 'Rua das Flores, 144', 'Londrina', 'PR', '1993-11-25');
insert into cliente (id_cliente, nome, email, cpf, endereco, cidade, estado, data_nasc) values (7, 'Guilherme Campos', 'campos123@codandosimples.com', '52861645016', 'Rua Pernambuco, 33', 'Cianorte', 'PR', '1990-5-22');
insert into cliente (id_cliente, nome, email, cpf, endereco, cidade, estado, data_nasc) values (8, 'Larissa Mello', 'lamello@codandosimples.com', '37045719035', 'Rua 10, 66', 'Niterói', 'RJ', '1991-10-8');
insert into cliente (id_cliente, nome, email, cpf, endereco, cidade, estado, data_nasc) values (9, 'Lucas da Silva', 'lusilva@codandosimples.com', '33219536093', 'Rua Santos Dumont, 1740', 'Parati', 'RJ', '1983-8-15');
insert into cliente (id_cliente, nome, email, cpf, endereco, cidade, estado, data_nasc) values (10, 'Mariana Freitas', 'mafreitas@codandosimples.com', '42171284013', 'Rua Tiradentes, 12', 'Joinville', 'SC', '1990-10-21');
insert into cliente (id_cliente, nome, email, cpf, endereco, cidade, estado, data_nasc) values (11, 'Vanessa Soares', 'van11@codandosimples.com', '43444622031', 'Rua das Orquídeas, 77', 'Blumenau', 'SC', '1979-11-28');
insert into cliente (id_cliente, nome, email, cpf, endereco, cidade, estado, data_nasc) values (12, 'Luiza Ferreira', 'luizafer@codandosimples.com', '49714415063', 'Rua Treze, 1100', 'Florianópolis', 'SC', '1977-6-15');
insert into cliente (id_cliente, nome, email, cpf, endereco, cidade, estado, data_nasc) values (13, 'Marcos Souza', 'marco@codandosimples.com', '11971259063', 'Rua Portes, 345', 'Coxim', 'MS', '1976-7-23');
insert into cliente (id_cliente, nome, email, cpf, endereco, cidade, estado, data_nasc) values (14, 'Sebastião Araújo', 'bastiao@codandosimples.com', '49691363003', 'Avenida Brasil, 67', 'Dourados', 'MS', '1975-4-17');
insert into cliente (id_cliente, nome, email, cpf, endereco, cidade, estado, data_nasc) values (15, 'Francisco da Silva', 'chico@codandosimples.com', '60117796034', 'Avenida da Saudade, 788', 'Bataguassu', 'MS', '1974-8-5');



select * from produto;

insert into produto (id_produto, nome, descricao, categoria, preco, estoque) values (1, 'Computador', 'Computador Gamer 8 Nucleos', 'Informatica', 2600, 15);
insert into produto (id_produto, nome, descricao, categoria, preco, estoque) values (2, 'Celular', 'Celular Dualchip', 'Eletronico', 1250, 99);
insert into produto (id_produto, nome, descricao, categoria, preco, estoque) values (3, 'Ventilador', 'Ventilador 4 velocidades', 'Eletrodomestico', 180.90,58);
insert into produto (id_produto, nome, descricao, categoria, preco, estoque) values (4, 'Televisor', 'Televisor Smart 42 pol.', 'Eletroeletronico', 1750.60,48);
insert into produto (id_produto, nome, descricao, categoria, preco, estoque) values (5, 'Mouse', 'Mouse sem fio', 'Informatica', 38,127);
insert into produto (id_produto, nome, descricao, categoria, preco, estoque) values (6, 'Bicicleta', 'Bicicleta Mtb Aro 29', 'Esporte', 1360,39);
insert into produto (id_produto, nome, descricao, categoria, preco, estoque) values (7, 'Geladeira', 'Geladeira Duplex', 'Eletrodomestico', 2230.0,85);
insert into produto (id_produto, nome, descricao, categoria, preco, estoque) values (8, 'Ar condicionado', 'Ar Condicionado Split 12000 Btus', 'Eletrodomestico', 1890.0,23);
insert into produto (id_produto, nome, descricao, categoria, preco, estoque) values (9, 'Raquete de tênis', 'Raquete de tênis Graphene 360+', 'Esporte', 670.0,17);
insert into produto (id_produto, nome, descricao, categoria, preco, estoque) values (10, 'Sofá', 'Sofá Retrátil e Reclinável', 'Moveis', 1245.0,6);
insert into produto (id_produto, nome, descricao, categoria, preco, estoque) values (11, 'Cama box', 'Cama box conjugado casal', 'Moveis', 580.0, 11);
insert into produto (id_produto, nome, descricao, categoria, preco, estoque) values (12, 'Mesa', 'Mesa de jantar c/ 4 cadeiras', 'Moveis', 480.0, 5);
insert into produto (id_produto, nome, descricao, categoria, preco, estoque) values (13, 'Microfone', 'Microfone condensador', 'Eletronico', 380.0,8);
insert into produto (id_produto, nome, descricao, categoria, preco, estoque) values (14, 'Mesa de tênis', 'Mesa de tênis ping pong', 'Esporte', 723.0,12);
insert into produto (id_produto, nome, descricao, categoria, preco, estoque) values (15, 'Cafeteira', 'Cafeteira expresso automática', 'Eletrodomestico', 450.0,16); 




insert into pedido values (default,6,"Pendente","2022-05-06");
insert into pedido values (default,6,"Finalizado","2022-05-08");
insert into pedido values (default,3,"Finalizado","2022-06-10");
insert into pedido values (default,4,"Pendente","2022-06-28");
insert into pedido values (default,4,"Finalizado","2022-07-27");
insert into pedido values (default,2,"Pendente","2022-07-25");
insert into pedido values (default,8,"Finalizado","2022-05-12");
insert into pedido values (default,9,"Finalizado","2022-06-11");
insert into pedido values (default,10,"Finalizado","2022-06-10");
insert into pedido values (default,13,"Pendente","2022-07-21");
insert into pedido values (default,14,"Finalizado","2022-05-27");
insert into pedido values (default,14,"Finalizado","2022-05-25");  




insert into pedido_item (id_pedido_item, id_pedido,id_produto,quantidade) values (default,1,14,1);
insert into pedido_item (id_pedido_item, id_pedido,id_produto,quantidade) values (default,2,15,1);
insert into pedido_item (id_pedido_item, id_pedido,id_produto,quantidade) values (default,3,7,3);
insert into pedido_item (id_pedido_item, id_pedido,id_produto,quantidade) values (default,4,4,4);
insert into pedido_item (id_pedido_item, id_pedido,id_produto,quantidade) values (default,5,1,2);
insert into pedido_item (id_pedido_item, id_pedido,id_produto,quantidade) values (default,6,8,3);
insert into pedido_item (id_pedido_item, id_pedido,id_produto,quantidade) values (default,7,10,2);
insert into pedido_item (id_pedido_item, id_pedido,id_produto,quantidade) values (default,8,11,1);
insert into pedido_item (id_pedido_item, id_pedido,id_produto,quantidade) values (default,9,3,6);
insert into pedido_item (id_pedido_item, id_pedido,id_produto,quantidade) values (default,10,4,3);
insert into pedido_item (id_pedido_item, id_pedido,id_produto,quantidade) values (default,11,2,5);
insert into pedido_item (id_pedido_item, id_pedido,id_produto,quantidade) values (default,12,1,2);
insert into pedido_item (id_pedido_item, id_pedido,id_produto,quantidade) values (default,12,4,2);



select * from produto; 

#ex 1 =====

select nome,categoria from produto 
where  categoria = "Informatica"; 


#ex 2 ====== 

select nome,categoria,estoque from produto
where estoque > 50; 

#ex 3 ======= 

select nome,preco from produto
where preco > 1000;
 

#ex4 ======

select * from cliente;

select nome, data_nasc from cliente 
where data_nasc like '199%';

#ex5 =======

select * from pedido;
select * from cliente;

select nome,estado from cliente
where estado like 'ms' or  estado like 'sp'; 

#ex6 ======= 
select cliente.nome,pedido.id_pedido,pedido.id_cliente from pedido
inner join cliente 
on pedido.id_pedido =5 
where cliente.id_cliente = pedido.id_cliente;

select cliente.nome,pedido.id_pedido,pedido.id_cliente from pedido
inner join cliente 
on cliente.id_cliente = pedido.id_cliente and pedido.id_pedido = 5;

#ex7 ========= 

show tables;
use ecomerce;
select * from produto;
select * from pedido;
select * from pedido_item; 
select * from cliente;


select cliente.nome,produto.nome from cliente
inner join pedido
on cliente.id_cliente = pedido.id_cliente
inner join pedido_item
on pedido_item.id_pedido = pedido.id_pedido
inner join produto
on produto.id_produto = pedido_item.id_produto
where produto.nome = 'Computador';

#ex8 ===============

select * from produto;
select * from pedido;
select * from pedido_item; 
select * from cliente;

select cliente.nome,pedido.status from cliente
inner join pedido
on pedido.status = 'pendente'
where cliente.id_cliente = pedido.id_cliente; 


#ex9 ============
select * from produto;
select * from pedido;
select * from pedido_item; 
select * from cliente; 

select cliente.nome,pedido.status from cliente
inner join pedido
on pedido.status = 'finalizado' and cliente.id_cliente = pedido.id_cliente;

#ex 10 =========
select * from produto;
select * from pedido;
select * from pedido_item; 
select * from cliente;  

select cliente.nome,produto.nome,pedido.id_pedido from cliente
inner join pedido
on cliente.id_cliente = pedido.id_cliente
inner join pedido_item
on pedido_item.id_pedido = pedido.id_pedido
inner join produto
on produto.id_produto = pedido_item.id_produto
where produto.nome = 'ventilador';

#ex 11 =========
select * from produto;
select * from pedido;
select * from pedido_item; 
select * from cliente;

select  categoria,max(preco) as maior_preço ,min(preco) as menor_preco from produto 

group by categoria ; 

#ex12 =========
DELIMITER $$
create function desconto (preco float)
returns float 
deterministic
 return(5*preco/100) 
 $$
DELIMITER ; 


select preco,desconto(preco) from produto where id_produto = 1; 

#ex13 =========
DELIMITER $$ 

create function ICMS(preco float)returns float 
deterministic
return(17*preco/100) 
$$
DELIMITER ;  


select preco,ICMS(preco) as ICMS from produto; 

#ex14 ==========

DELIMITER $$

create function valor_liquido(preco float) returns float 
deterministic
return(preco+ICMS(preco)-desconto(preco)) 

$$

DELIMITER ; 


select * from produto;
select valor_liquido(preco) as preco_c_imp_desc from produto; 


#ex15 ======== 
select * from produto;
select * from pedido;
select * from pedido_item; 
select * from cliente; 


select preco from pedido_item 
inner join produto
on pedido_item.id_produto = produto.id_produto; 



