class Spree::IfmbCallbackController < Spree::BaseController

  skip_before_filter :verify_authenticity_token
  # ssl_required

  def notify
    #chave, entidade, referencia, valor, data, terminal

    entity = params[:entidade]
    reference = params[:referencia]
    order_value = params[:valor]
    payment_date = params[:data]
    terminal = params[:terminal]

    payment = Spree::Payment.where(ifmb_reference: reference).first
    payment.complete

    render nothing: true, status: 200
  end

end
