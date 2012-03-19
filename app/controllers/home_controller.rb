class HomeController < ApplicationController
  def index

  	@catalogs = Catalog.includes(:products).all
  	#@company_name = @setting.company_name
  	@address = @setting.address
  	@email = @setting.email
  	@asia = @setting.asia
  	@europe = @setting.europe
  	@africa = @setting.africa
  	@america = @setting.america
    @companyps=Companyp.all(:limit => 4)
  end

end
