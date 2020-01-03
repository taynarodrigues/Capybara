describe 'IDs Dinâmicos', :ids_dinamicos do 
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/access'
    end

    # regra
    #S => termina com
    #^ => começa com
    #* => contém

    it 'cadastro' do
        find('input[id$=UsernameInput]').set 'fernado'
        find('input[id^=PasswordInput]').set '123456'
        find('a[id*=GetStarteButton]').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end
end

