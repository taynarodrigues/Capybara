
describe 'Upload', :upload do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/imagem.jpg'
    end

    it 'upload com arquivo texto' do
        # puts @arquivo
        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'arquivo.txt'
    end

    it 'upload de imagem' do

        attach_file('file-upload', @imagem)
        click_button 'Upload'

        sleep 8

        img = find('#new-image')
        expect(img[:src]).to include '/uploads/imagem.jpg'

    end

    after(:each) do
        sleep 3
    end


end