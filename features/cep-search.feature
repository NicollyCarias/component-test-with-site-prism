#language: pt

@search-google
@desktop
Funcionalidade: Chamada de API

  Cenário: chamada de API de busca de CEP
    Dado que eu esteja consultando a API CEP
    Quando realizar uma consulta pelo cep "01001000"
    E então deve receber o retorno com os dados como "01001-000" "Praça da Sé" "lado ímpar" "Sé" "São Paulo" "SP"
    Então vou receber o retorno do status de sucesso
