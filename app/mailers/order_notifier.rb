class OrderNotifier < ActionMailer::Base
  #encoding: UTF-8

  

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @order = order
    mail to: order.email, subject:'Pragmatic Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)
     @order = order
     mail  to: order.email, subject:'Pragmatic Store Order shipped'
  end
  
end
