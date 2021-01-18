require 'httparty'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

RSpec.describe 'Recuperar informações e status code de serviços da google' do

  
  #GET
  it 'Deve realizar uma request para o home da google' do
      response = HttParty.get('https://www.google.com.br/')

      expect(response.code).to eql(200)
    end
  
  #GET
  it 'Deve retornar 200 para a request da google conta' do
    response = HttParty.get('https://accounts.google.com/')

    expect(response.code).to eql(200)
  end

  #GET
  it 'Deve retornar 200 para a request do youtube' do
      response = HttParty.get('https://www.youtube.com/')
  
      expect(response.code).to eql(200)
  end

  #GET
  it 'Deve retornar 200 para a request da google maps' do
    response = HttParty.get('https://www.google.com.br/maps/')

    expect(response.code).to eql(200)
  end

  #GET
  it 'Deve retornar 200 para a request da google calendar' do
      response = HttParty.get('https://calendar.google.com/')
  
      expect(response.code).to eql(200)
  end

  
  #GET
  it 'Deve retornar o content-type text/html; charset=UTF-8' do
    response = HttParty.get('https://accounts.google.com/')
    response = HttParty.get('https://calendar.google.com/')
    expect(response.headers['content-type']).to eql('text/html; charset=UTF-8')
  end

  #GET
  it 'O retorno não deve ser vazio' do
    response = HttParty.get('https://www.google.com.br/')
    expect(response.parsed_response).not_to be_empty
  end

end