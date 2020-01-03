describe 'IDs Dinâmicos', :ids_dinamicos do 
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/access'
    end

    it 'cadastro' do
        find('PortalTheme_wt10_block_wtcontent_holder_wt8_wtUsernameInput').set 'fernado'
        find('PasswordInput_wt11_PortalTheme_wt7_block_wtcontent_holder_wt8_wt').set '123456'
        find('PortalTheme_wt4_block_wtGetStartedButton_wtcontent_holder_OSCore_wt3_block').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end
end
