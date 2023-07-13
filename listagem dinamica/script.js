class Pruduto{


    constructor(){

        this.id = 0;
        this.arrayProduto = [];
        
    }

    salvar(){

        let produto = this.lerdDados();

        if(this.validarCampos(produto)){

            this.adicionar(produto);

        }

        this.listaTabela();
        

    }  
    

    listaTabela(){

        let tbody = document.getElementById('tbody');
        tbody.innerText = '';

        for (let i = 1; i< this.arrayProduto.length; i++){

            let tr = tbody.insertRow();
            

            let td_id = tr.insertCell();
            let td_produto = tr.insertCell();
            let td_valor = tr.insertCell();

            td_id.innerText = this.arrayProduto[i].id;
            td_produto.innerText = this.arrayProduto[i].nomeProduto;
            td_valor.innerText = this.arrayProduto[i].preco;

        }
    }



    adicionar(produto){

        this.arrayProduto.push(produto);
        this.id ++;

    }



    lerdDados(){
        let produto = {}

        produto.id = this.id;

        produto.nomeProduto = document.getElementById('produto').value;

        produto.preco = document.getElementById('preco').value;


        return produto;

    }
    
    validarCampos(produto){

        let msg = '';


        if(produto.nomeProduto == ''){
            msg += 'INFORME O NOME DO PRODUTO \n';


        }

        if(produto.preco == ''){
            msg += 'INFORME O NOME DO PREÇO \n';


        } 

        if(msg != ''){
            alert(msg);
            return false; 
        }

        return true;

    }


    cancelar(){

        

    }
}

var produto = new Pruduto();