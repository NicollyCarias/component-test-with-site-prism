require 'httparty'

class CepSearch
    include HTTParty
    base_uri "https://viacep.com.br"
    
  def cep_search(cep)
    self.class.get("/ws/#{cep}/json/")
  end
end

Dado('que eu esteja consultando a API CEP') do
    @cep_search = CepSearch.new 
end

Quando('realizar uma consulta pelo cep {string}')  do |cep|
    @res = @cep_search.cep_search(cep)
end

E('então deve receber o retorno com os dados como {string} {string} {string} {string} {string} {string}') do |cep, logradouro, complemento, bairro, localidade, uf|
    expect(@res["cep"]).to eql(cep)
    expect(@res["logradouro"]).to eql(logradouro)
    expect(@res["complemento"]).to eql(complemento)
    expect(@res["bairro"]).to eql(bairro)
    expect(@res["localidade"]).to eql(localidade)
    expect(@res["uf"]).to eql(uf)
end

Então('vou receber o retorno do status de sucesso') do 
    @cep_search
end




