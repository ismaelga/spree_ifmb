# require 'order'
require 'ifmb'

Spree::Order.class_eval do

  def ifmb_reference payment_method_id
    ifmb_generator(payment_method_id).generate
  end

  def ifmb_html payment_method_id
    ifmb_generator(payment_method_id).in_html
  end

  private

  def ifmb_generator payment_method_id
    @generator ||= Hash.new
    return @generator[payment_method_id] if @generator[payment_method_id]


    payment_method = PaymentMethod::Ifmb.find(payment_method_id)
    configuration = payment_method.preferences

    opts = {
      entidade: configuration[:entity],
      sub_entidade: configuration[:sub_entity],
      order_id: self.number[1..-1],
      order_value: self.total
    }
    @generator[payment_method_id] = Ifmb::Generator.new opts
  end

end