
describe 'Login com Cadastro', :login3 do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/access'
    end
         
        it 'login com sucesso' do

        login_form = find('#login')
            login_form.find('input[name=username]').set 'stark'
            login_form.find('input[name=password]').set 'jarvis!'

            click_button 'Entrar'
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
            end
end