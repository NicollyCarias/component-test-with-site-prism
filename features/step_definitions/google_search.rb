Dado('que esteja na tela de busca') do
    @search_pudim_page = SearchPudimPage.new
    @search_pudim_page.load
    @search_pudim_page.open_page?
end

Quando('realizar uma busca por {string}')  do |searchText|
    @search_pudim_page.search_input.set(searchText)
end

E('clicar no primeira receita') do 
    @search_pudim_page.number_one.click
end

E('clicar no botão pesquisa Google') do
    @search_pudim_page.search_button.click
end

Então('deve visualizar links de receita de {string}') do |searchText|
    @search_pudim_page.search_input.set(searchText)
end

Então('desejo ver a receita') do
    @search_pudim_page.wait_until_tudo_gostoso_visible
end