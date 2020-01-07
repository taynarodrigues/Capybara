 describe 'Tabelas', :tabs do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/tables'
    end

    it 'pega o tony stark na lista' do 
        expect(page).to have_content 'Robert Downey Jr'
    end

    it 'deve exibir o salario do stark' do
        expect(page).to have_content '10.000.000'
    end

 
 end