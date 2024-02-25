class HomeMercadoPage < SitePrism::Page

    element :botao_fechar_modal,   :xpath,      '//*/button[contains(@title, "Fechar modal de regionalização")]'
    element :icone_carrinho,       :css,        "button[aria-label=\"Carrinho de compra vazio\"] > span"

    def fechar_modal_regionalizacao
        botao_fechar_modal.click
    end

    def verificar_carrinho_vazio
        expect(icone_carrinho.text).to eql "0"
    end
end
