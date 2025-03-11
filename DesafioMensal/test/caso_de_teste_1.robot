Language: ptbr
*** Settings ***
Resource  ../resources/keywords.robot
Resource    ../resources/global_variables.robot
Library    SeleniumLibrary
*** Test Cases ***
Caso de teste 01: Cadastro novo 
    Given acesso a página @URL 
    And o usuário preencheu o "nome completo" @NOMECOMPLETO  
    And o usuário preencheu a "data de nascimento" @DATA_NASCIMENTO   
    And o usuário Prenche "impressão digital" @IMPRESSAO_DIGITAL    
    And o usuário preenche "preferência de navegação" @PREFEFERENCIA_NAVEGACAO  
    And o usuário fez o upload de "foto de perfil" @FOTO_DE_PERFIL 
    And o usuário preenche "preferência de idioma" @PREFERENCIA_DE_IDIOMA 
    And o usuário preenche "nível de privacidade" @NIVEL_PRIVACIDADE    
    And o usuário aceita o consentimento @CONSENTIMENTO_COLETA
    Então validar que o formulário foi submetido


