class ProductUserController < ApplicationController


  def contact
    @page = Page.find(1)
  end
  
  def about
    @page = Page.find(2)
  end
end
