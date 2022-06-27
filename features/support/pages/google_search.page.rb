class SearchPudimPage < SitePrism::Page
    set_url "/"
    element :search_input, 'input[name="q"]'
    element :search_button, 'input[name="btnK"]'
    element :number_one, 'img[id=rimg_1]'
    element :tudo_gostoso, 'input[name=q]'

    def open_page?
        wait_until_search_input_visible(wait: 5)
        wait_until_search_button_visible(wait: 5)
    end
end