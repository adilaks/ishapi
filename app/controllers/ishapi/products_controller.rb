require_dependency "ishapi/application_controller"
module Ishapi
  class ProductsController < UnrestrictedController

    def show
      @product = ::CoTailors::Product.where( :kind => params[:kind] ).first
      authorize! :show, @product
    end

  end
end

