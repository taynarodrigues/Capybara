 describe 'Tabelas', :tabs do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/tables'
    end

    it 'deve exibir o salario do stark' do

        atores = all('table tbody tr')

        stark = atores.detect { |ator| ator.text.include?('Robert Downey Jr')}

        expect(stark.text).to include '10.000.000'
        
    end

    it 'deve exibir o salario do vin diesel' do
        diesel = find('table tbody tr', text: '@vindiesel') 
        expect(diesel).to have_content '10.000.000'
    end

    it 'deve exibir o filme velozes' do 
        diesel = find('table tbody tr', text: '@vindiesel')
        expect(diesel).to have_content 'Velozes e Furiosos'
    end
 
 end