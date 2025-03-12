*** Variables ***
#Configurações globais
${URL}      https://desafio-equipe.vercel.app/
${URL_DEPOIS}    https://desafio-equipe.vercel.app/#
 #https://desafio-equipe.vercel.app/ 
${BROWSER}    chrome 
${SLEEP}    1s

${NOMECOMPLETO}                          Rafael de Almeida
${DATA_NASCIMENTO}               26/04/1994
${IMPRESSAO_DIGITAL}             Impressão Digital fornecida
${PREFERENCIA_NAVEGACAO}         Google chrome
${FOTO_DE_PERFIL}    C:\\RobotFramework\\DesafioMensal\\resources\\meudesafio.jpg 
${PREFERENCIA_DE_IDIOMA}                       Português
${IDIOMA_VALOR}                  Português
${NIVEL_PRIVACIDADE}             Alto
${NIVEL_PRIVACIDADE_VALOR}       Alto
${CONSENTIMENTO_COLETA}   Aceito
${BOTAO_FINALIZAR_CADASTRO}     Finalizar Cadastro
${BOTAO_CANCELAR_CADASTRO}        Cancelar
${TITULO}                        Cadastrar Perfil de Usuário Inteligente

${ID_NOME}                              //*[@id="nome"]
${ID_DATADENASCIMENTO}                 //*[@id="dataNascimento"]
${ID_IMPRESSÃODIGITAL}                 //*[@id="impressao-digital"] 
${ID_PREFERENCIADENAVEGACAO}           //*[@id="preferenciasNavegacao"]
${ID_FOTODEPERFIL}                     //*[@id="fotoPerfil"] 
${ID_IDIOMAPORTUGUÊS}                  //*[@id="idioma"]/option[2]  
${ID_NIVELPRIVACIDADE}                 //*[@id="privacidade"]/option[2]
${ID_CONSENTIMENTOCOLETA}               //*[@id="consentimento"]