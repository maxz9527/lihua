class HomeController < ApplicationController
  def index
  	@china = ""
  	@usa = ""
  	@catalogs = Catalog.includes(:products).all
  	@contact_head = "LiHua Textile"
  	@contact_body = "address"
  	@email = "a@a.com"
  end

end
