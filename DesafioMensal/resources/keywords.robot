Language: ptbr
*** Settings ***
Library  SeleniumLibrary
resource  ../resources/global_variables.robot
*** Variables ***

*** Keywords ***
acesso a página @URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Execute JavaScript    document.body.style.transform = 'scale(0.5)'   
fechar o navegador
    Close Browser
que o usuário está na tela "Cadastrar Perfil de usuário Inteligente"
    Go to     ${URL} 
    Wait Until Page Contains  ${TITULO}
o usuário preencheu o "nome completo" @NOMECOMPLETO
    Input Text    ${ID_NOME}   ${NOMECOMPLETO}
o usuário não preencheu o "nome completo" @NOMECOMPLETO
    Wait Until Element Is Visible    css=input:invalid
    Element Should Be Visible    css=input:invalid
o usuário preencheu a "data de nascimento" @DATA_NASCIMENTO 
    Input Text    ${ID_DATADENASCIMENTO}     ${DATA_NASCIMENTO} 
o usuário Prenche "impressão digital" @IMPRESSAO_DIGITAL  
    Click Element    ${ID_IMPRESSÃODIGITAL}     
o usuário preenche "preferência de navegação" @PREFEFERENCIA_NAVEGACAO
    Input Text    ${ID_PREFERENCIADENAVEGACAO}     ${PREFERENCIA_NAVEGACAO}
o usuário fez o upload de "foto de perfil" @FOTO_DE_PERFIL 
    Input Text    ${ID_FOTODEPERFIL}    ${FOTO_DE_PERFIL} 
o usuário preenche "preferência de idioma" @PREFERENCIA_DE_IDIOMA
    Click Element    ${ID_IDIOMAPORTUGUÊS}    
o usuário preenche "nível de privacidade" @NIVEL_PRIVACIDADE
    Click Element  ${ID_NIVELPRIVACIDADE}    
o usuário aceita o consentimento @CONSENTIMENTO_COLETA 
    Select Checkbox    ${ID_CONSENTIMENTOCOLETA}     
quando o usuário clica em finalizar cadastro
    #Submit Form   
    Execute Javascript     document.querySelector("body > div > form > div.form-actions > button.btn.btn-submit").click();
validar que o formulário foi submetido 
    ${URL}    Get Location
    ${URL_DEPOIS}    Get Location
    Should Be Equal    ${URL}    ${URL_DEPOIS}
validar que o formulário não foi submetido 
    ${URL}    Get Location
    ${URL}    Get Location
    Should Be Equal    ${URL}    ${URL}
    
 


  