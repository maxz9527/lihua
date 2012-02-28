class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  def self.first_init
  	admin = first
  	if admin.blank?
  		admin = create(:email => "linglieli@hotmail.com",:password=> "123456",:password_confirmation=>"123456")
  	end
  end
end
