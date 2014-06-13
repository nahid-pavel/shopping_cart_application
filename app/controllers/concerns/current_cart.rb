# encoding: UTF-8

module CurrentCart
  extend ActiveSupport::Concern

  private

    def set_cart1 
      @cart1 = Cart1.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      @cart1 = Cart1.create
      session[:cart_id] = @cart1.id
    end
end





