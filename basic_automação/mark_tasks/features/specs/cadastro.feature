#language:pt

Funcionalidade: Cadastro
	Sendo um usuário que possui muitas tarefas
	Posso fazer meu cadastro no sistema
	Para poder gerenciar as minhas tarefas
    
    Contexto: Cadastro
        Dado que eu acessei a página de cadastro
    
	Cenário: Cadastro simples

        E possuo os seguintes dados:
            | Nome  | Marise              |
            | Email | marisemfs@gmail.com |
            | Senha | 123456              |
        Quando faço o meu cadastro
        Então sou redirecionado para o  painel de tarefas

    Cenário: Email não informado

        E possuo os seguintes dados:
            | Nome  | Marise              |
            | Email |                     |
            | Senha | 123456              |
        Quando faço o meu cadastro
        Então devo ver uma mensagem de alerta "Email é obrigatório."
   
    Cenário: Senha não informada

        E possuo os seguintes dados:
            | Nome  | Marise              |
            | Email | marisemfs@gmail.com |
            | Senha |                     |
        Quando faço o meu cadastro
        Então devo ver uma mensagem de alerta "Informe uma senha."

    Cenário: Senha com 5 caracteres

        Dado que eu acessei a página de cadastro
        E possuo os seguintes dados:
            | Nome  | Marise             |
            | Email | marisemfs@gmail.com|
            | Senha |12345                |
        Quando faço o meu cadastro
        Então devo ver uma mensagem de alerta "Sua senha deve ter pelo menos 6 caracteres."
	
