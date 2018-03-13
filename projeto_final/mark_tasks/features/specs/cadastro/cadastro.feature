#language:pt

Funcionalidade: Cadastro
	Sendo um usuário que possui muitas tarefas
	Posso fazer meu cadastro no sistema
	Para poder gerenciar as minhas tarefas
    
    Contexto: Cadastro
        Dado que eu acessei a página de cadastro
   
   @smoke
	Cenário: Cadastro simples

        E possuo os seguintes dados:
            | Nome  | Marise              |
            | Email | marisemfs@bol.com      |
            | Senha | 123456              |
        Quando faço o cadastro
        Então sou redirecionado para o  painel de tarefas

        
 @tentativa_cadastro
    Esquema do Cenario: Tentativa de cadastro
        
        E possuo os seguintes dados:
            | Nome  | <nome>   |
            | Email | <email>  |
            | Senha | <senha>  |
        Quando faço o cadastro
        Então devo ver uma mensagem de alerta "<alerta>"

        Exemplos:
            | nome     | email        | senha  | alerta                                      |
            | Marise   |              | 123456 | Email é obrigatório.                        |
            | Marise   | eu@marise.io |        | Informe uma senha.                          |
            | Marise   | eu@marise.io | 12345  | Sua senha deve ter pelo menos 6 caracteres. |
            | Marise   | eu@marise.io | 1234   | Sua senha deve ter pelo menos 6 caracteres. |
            | Marise   | eu@marise.io | 123    | Sua senha deve ter pelo menos 6 caracteres. |
            | Marise   | eu@marise.io | 12     | Sua senha deve ter pelo menos 6 caracteres. |
            | Marise   | eu@marise.io | 1      | Sua senha deve ter pelo menos 6 caracteres. |