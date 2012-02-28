class Setting < ActiveRecord::Base

	def self.first_init
		setting = first
		if setting.blank?
			setting=create(:company_name=>"Lihua Textile",:address => "shengze",:email=>"a@a.com",:asia => "asia",
				:europe => "europe",:africa => "africa",:america => "america")
				
		end
		setting

	end
end
