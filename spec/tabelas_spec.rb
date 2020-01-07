 describe 'Tabelas', :tabs do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/tables'
    end

    it 'deve exibir o salario do stark' do

        atores = all('table tbody tr')

        stark = atores.detect { |ator| ator.text.include?('Robert Downey Jr')}

        expect(stark.text).to include '10.000.000'
        
    end

 
 end