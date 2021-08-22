#language: pt
Funcionalidade: Cadastro de usuário
    EU COMO usuário do sistema.
    DESEJO realizar o cadastro de novos usuários.
    PARA QUE seja possível armazenar e gerenciar seus dados.

Contexto: 
    Dado que acesso o site

Esquema do Cenário: Cadastrar usuário com sucesso
    Quando preencho o campo Nome com "<nome>" 
    E preencho o campo E-mail com "<e-mail>"
    E preencho o campo Senha com "<senha>"
    E clico no botão "Cadastrar"
    Entao devo visualizar a tabela com título "Usuários cadastrados" com as informações cadastradas
    E deve aparecer na tabela o mesmo "<nome>" e "<e-mail>" cadastrados

    Exemplos:
    | nome            | e-mail             | senha    |
    | Maria da Silva  | maria@teste.com.br | 12345678 |

Esquema do Cenário: Validar campos
    Quando preencho o campo Nome com "<nome>" 
    E preencho o campo E-mail com "<e-mail>"
    E preencho o campo Senha com "<senha>"
    E clico no botão "Cadastrar"
    Entao devo visualizar a mensagem de validação "<mensagem>"

    Exemplos:
    | nome            | e-mail             | senha    | mensagem                                  |
    | Maria           | maria@teste.com.br | 12345678 | Por favor, insira um nome completo.       |
    | Maria da Silva  | maria@teste        | 12345678 | Por favor, insira um e-mail válido.       |
    | Maria da Silva  | maria@teste.com.br | 1234     | A senha deve conter ao menos 8 caracteres.|

Cenário: Validar campos obrigatórios
    Quando não preencho os campos da tela
    E clico no botão "Cadastrar"
    Entao devo visualizar a mensagem de obrigatoriedade do "Nome"
    E devo visualizar a mensagem de obrigatoriedade do "E-mail"
    E devo visualizar a mensagem de obrigatoriedade do "Senha"

Esquema do Cenário: Excluir usuário com sucesso
    Quando preencho o campo Nome com "<nome>" 
    E preencho o campo E-mail com "<e-mail>"
    E preencho o campo Senha com "<senha>"
    E clico no botão "Cadastrar"
    Entao devo visualizar a tabela com título "Usuários cadastrados" com as informações cadastradas
    E deve aparecer na tabela o mesmo "<nome>" e "<e-mail>" cadastrados
    E clico no link "Excluir"
    Entao não deve existir a tabela com o título "Usuários cadastrados"
    
    Exemplos:
    | nome            | e-mail             | senha    |
    | Maria da Silva  | maria@teste.com.br | 12345678 |