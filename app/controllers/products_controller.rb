class ProductsController < ApplicationController

    def index
        @cart = self.cart
        render "index"
    end

    def add
        current_cart = self.cart
        current_cart << params[:product]
        cart = @cart
        redirect_to "/"
    end

end
