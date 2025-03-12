Language: ptbr
*** Settings ***
Resource  ../resources/keywords.robot
Resource    ../resources/global_variables.robot
Library    SeleniumLibrary
*** Test Cases ***
Caso de teste 01: Cadastro novo 
    [Documentação]     Cadastro realizadom sucesso.
    Dado acesso a página @URL 
    E que o usuário está na tela "Cadastrar Perfil de usuário Inteligente"
    E o usuário preencheu o "nome completo" @NOMECOMPLETO  
    E o usuário preencheu a "data de nascimento" @DATA_NASCIMENTO   
    E o usuário Prenche "impressão digital" @IMPRESSAO_DIGITAL    
    E o usuário preenche "preferência de navegação" @PREFEFERENCIA_NAVEGACAO  
    E o usuário fez o upload de "foto de perfil" @FOTO_DE_PERFIL 
    E o usuário preenche "preferência de idioma" @PREFERENCIA_DE_IDIOMA 
    E o usuário preenche "nível de privacidade" @NIVEL_PRIVACIDADE    
    E o usuário aceita o consentimento @CONSENTIMENTO_COLETA
    E validar que o formulário foi submetido
    Então fechar o navegador

Caso de teste 02: Cadastro nome vazio @NOMEVAZIO
    [Documentação]     Cadastro sem sucesso ao não preencher campo nome
    Dado acesso a página @URL 
    E que o usuário está na tela "Cadastrar Perfil de usuário Inteligente"
   #And o usuário preencheu o "nome completo" @NOMECOMPLETO
    E o usuário preencheu a "data de nascimento" @DATA_NASCIMENTO   
    E o usuário Prenche "impressão digital" @IMPRESSAO_DIGITAL    
    E o usuário preenche "preferência de navegação" @PREFEFERENCIA_NAVEGACAO  
    E o usuário fez o upload de "foto de perfil" @FOTO_DE_PERFIL 
    E o usuário preenche "preferência de idioma" @PREFERENCIA_DE_IDIOMA 
    E o usuário preenche "nível de privacidade" @NIVEL_PRIVACIDADE    
    E o usuário aceita o consentimento @CONSENTIMENTO_COLETA   
    E quando o usuário clica em finalizar cadastro
    E validar que o formulário não foi submetido 
    Então fechar o navegador

Caso de teste 03: Cadastro com DATA DE NASCIMENTO vazio
    [Documentação]     Cadastro sem sucesso ao não preencher campo data de nascimento 
    Dado acesso a página @URL 
    E que o usuário está na tela "Cadastrar Perfil de usuário Inteligente"
    E o usuário preencheu o "nome completo" @NOMECOMPLETO
   #E o usuário preencheu a "data de nascimento" @DATA_NASCIMENTO   
    E o usuário Prenche "impressão digital" @IMPRESSAO_DIGITAL    
    E o usuário preenche "preferência de navegação" @PREFEFERENCIA_NAVEGACAO  
    E o usuário fez o upload de "foto de perfil" @FOTO_DE_PERFIL 
    E o usuário preenche "preferência de idioma" @PREFERENCIA_DE_IDIOMA 
    E o usuário preenche "nível de privacidade" @NIVEL_PRIVACIDADE    
    E o usuário aceita o consentimento @CONSENTIMENTO_COLETA   
    E quando o usuário clica em finalizar cadastro
    E validar que o formulário não foi submetido 
    Então fechar o navegador

Caso de teste 04: Cadastro nome vazio Assertion CSS selector @NOMEVAZIO
    [Documentação]     Cadastro sem sucesso ao não preencher campo nome. Assertion com CSS Selector.
    Dado acesso a página @URL 
    E que o usuário está na tela "Cadastrar Perfil de usuário Inteligente"
    Mas o usuário não preencheu o "nome completo" @NOMECOMPLETO
   #And o usuário preencheu o "nome completo" @NOMECOMPLETO
    E o usuário preencheu a "data de nascimento" @DATA_NASCIMENTO   
    E o usuário Prenche "impressão digital" @IMPRESSAO_DIGITAL    
    E o usuário preenche "preferência de navegação" @PREFEFERENCIA_NAVEGACAO  
    E o usuário fez o upload de "foto de perfil" @FOTO_DE_PERFIL 
    E o usuário preenche "preferência de idioma" @PREFERENCIA_DE_IDIOMA 
    E o usuário preenche "nível de privacidade" @NIVEL_PRIVACIDADE    
    E o usuário aceita o consentimento @CONSENTIMENTO_COLETA   
    E quando o usuário clica em finalizar cadastro
    E validar que o formulário não foi submetido 
    Então fechar o navegador