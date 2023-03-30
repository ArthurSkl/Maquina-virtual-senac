import tkinter as tk 

from Classe_pessoa import*



    # Criar janela principal
janela = tk.Tk()
janela.title('Formulário de Cadastro')

    # Criar widgets
label_nome = tk.Label(janela, text='Nome:')
entry_nome = tk.Entry(janela)

label_cpf = tk.Label(janela, text='CPF:')
entry_cpf = tk.Entry(janela)

label_celular = tk.Label(janela, text='Número de Celular:')
entry_celular = tk.Entry(janela)

label_salario = tk.Label(janela, text='Salário:')
entry_salario = tk.Entry(janela)

button_enviar = tk.Button(janela, text='Enviar')

label_resultado = tk.Label(janela, text='')

    # Posicionar widgets na janela
label_nome.grid(row=0, column=0)
entry_nome.grid(row=0, column=1)

label_cpf.grid(row=1, column=0)
entry_cpf.grid(row=1, column=1)

label_celular.grid(row=2, column=0)
entry_celular.grid(row=2, column=1)

label_salario.grid(row=3, column=0)
entry_salario.grid(row=3, column=1)

button_enviar.grid(row=4, column=0, columnspan=2)

label_resultado.grid(row=5, column=0, columnspan=2)

    # Iniciar loop da janela
janela.mainloop()
