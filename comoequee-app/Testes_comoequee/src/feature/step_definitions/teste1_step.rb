#language: pt

@cadastro_usuario

 	#------------------------------------ Cadastro Usuários ------------------------------------

    Dado('que usuário queira realizar os tutoriais')do
        tuto = Page.new
        tuto = tuto.clickOnTutorials()
    end


    Dado('que o usuário esteja na página inicial do site') do
        @driver = Selenium::WebDriver.for :chrome
        @driver.get "http://www.comoequee.com.br"
        sleep 3
    end

    Quando("clicar no botão cadastrar") do 
    tuto = Page.new
    tudo.clickOnCadastro()
    end

    Então("será redirecionado para página de cadastro")do 
        register = Page.new
        register.register()
    end

    Quando('preencher todos os campos')do
        page = Page.new
        page = check.checkTheData()
        if page == true
            page.clickOnRegister()
        else
            page.errorData()
        end
    end

    Entao('o cadastro será realizado')do    
        page = Page.new
        page.msgRegister
    end