class PaymentMethod::Ifmb < Spree::PaymentMethod

  attr_accessible :preferred_display_name, :preferred_entity, :preferred_sub_entity
  preference :display_name, :string
  preference :entity, :string
  preference :sub_entity, :string

  def actions
    %w{capture void}
  end

  # Indicates whether its possible to capture the payment
  def can_capture?(payment)
    ['checkout', 'pending'].include?(payment.state)
  end

  # Indicates whether its possible to void the payment.
  def can_void?(payment)
    payment.state != 'void'
  end

  def capture(*args)
    ActiveMerchant::Billing::Response.new(true, "", {}, {})
  end

  def void(*args)
    ActiveMerchant::Billing::Response.new(true, "", {}, {})
  end

  def payment_profiles_supported?
    false
  end

  def source_required?
    false
  end
end