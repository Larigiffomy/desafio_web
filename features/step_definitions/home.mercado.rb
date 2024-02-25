
Dado('que eu tenho acesso ao site carrefour mercado') do
    visit ''
    sleep 10
  end
  
  Quando('clico para fechar o botao de regionalizacao') do
    @test = HomeMercadoPage.new
    @test.fechar_modal_regionalizacao
  end
  
  Entao('devo verificar se no mini carrinho possui produto') do
    @test.verificar_carrinho_vazio
  end
