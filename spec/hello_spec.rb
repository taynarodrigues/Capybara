
describe 'Meu primeiro script', :hello, :smoke do

    # redimensionando a janela do navegador
    before(:each) do 
        page.current_window.resize_to(1280, 800)
    end
   
    it 'visitar a pagina' do

        visit '/'
        expect(page.title).to eql 'Training Wheels Protocol'
    end
end