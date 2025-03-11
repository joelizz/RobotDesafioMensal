Language: ptbr
*** Settings ***
Resource  ../resources/keywords.robot
Resource    ../resources/global_variables.robot
Library    SeleniumLibrary
*** Test Cases ***
Caso de teste 02: Cadastro nome vazio @NOMEVAZIO
    Dado acesso a página @URL 
   #And o usuário preencheu o "nome completo" @NOMECOMPLETO
    E o usuário preencheu a "data de nascimento" @DATA_NASCIMENTO   
    E o usuário Prenche "impressão digital" @IMPRESSAO_DIGITAL    
    E o usuário preenche "preferência de navegação" @PREFEFERENCIA_NAVEGACAO  
    E o usuário fez o upload de "foto de perfil" @FOTO_DE_PERFIL 
    E o usuário preenche "preferência de idioma" @PREFERENCIA_DE_IDIOMA 
    E o usuário preenche "nível de privacidade" @NIVEL_PRIVACIDADE    
    E o usuário aceita o consentimento @CONSENTIMENTO_COLETA   
    E quando o usuário clica em finalizar cadastro
    Então validar que o formulário não foi submetido 