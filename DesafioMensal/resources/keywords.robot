Language: ptbr
*** Settings ***
Library  SeleniumLibrary
resource  ../resources/global_variables.robot
*** Variables ***

${BROWSER}  chrome
${FOTO_DE_PERFIL}  C:\\RobotFramework\\DesafioMensal\\resources\\meudesafio.jpg  #C:\RobotFramework\DesafioMensal\resources\meudesafio.jpg 

*** Keywords ***
acesso a página @URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Execute JavaScript    document.body.style.transform = 'scale(0.5)'   
o usuário preencheu o "nome completo" @NOMECOMPLETO
    Input Text    //*[@id="nome"]    ${NOMECOMPLETO}
o usuário preencheu a "data de nascimento" @DATA_NASCIMENTO 
    Input Text    //*[@id="dataNascimento"]    ${DATA_NASCIMENTO} 
o usuário Prenche "impressão digital" @IMPRESSAO_DIGITAL  
    Click Element    //*[@id="impressao-digital"]    
o usuário preenche "preferência de navegação" @PREFEFERENCIA_NAVEGACAO
    Input Text    //*[@id="preferenciasNavegacao"]    ${PREFERENCIA_NAVEGACAO}
o usuário fez o upload de "foto de perfil" @FOTO_DE_PERFIL 
    Input Text    //*[@id="fotoPerfil"]    ${FOTO_DE_PERFIL} 
o usuário preenche "preferência de idioma" @PREFERENCIA_DE_IDIOMA
    Click Element    //*[@id="idioma"]/option[2]    
o usuário preenche "nível de privacidade" @NIVEL_PRIVACIDADE
    Click Element  //*[@id="privacidade"]/option[2]   
o usuário aceita o consentimento @CONSENTIMENTO_COLETA 
    Select Checkbox    //*[@id="consentimento"]    
   #Click Element    /html/body/div/form/div[9]/button[1] 
quando o usuário clica em finalizar cadastro
    #Submit Form   
    Execute Javascript     document.querySelector("body > div > form > div.form-actions > button.btn.btn-submit").click();
    Sleep    2s
validar que o formulário foi submetido 
    ${URL}    Get Location
    Sleep    1s
    ${URL_DEPOIS}    Get Location
    Should Be Equal    ${URL}    ${URL_DEPOIS}
validar que o formulário não foi submetido 
    ${URL}    Get Location
    Sleep    1s
    ${URL}    Get Location
    Should Be Equal    ${URL}    ${URL}
    
 


  