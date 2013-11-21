class PagesController < ApplicationController
  def pag_inicial
    render 'pag_inicial'
  end

  def pag_entrar
    render 'pag_entrar'
  end

  def pag_registrar
    render 'pag_registrar'
  end

  def pag_busca
    render 'pag_busca'
  end

  def pag_itens
    render 'pag_itens'
  end

  def pag_carrinho
    render 'pag_carrinho'
  end

  def pag_sair
    render 'pag_sair'
  end

end
