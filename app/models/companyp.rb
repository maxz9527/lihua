class Companyp < ActiveRecord::Base
  has_attached_file :image,:styles => {:large => "700x600",:small => "100x100"}
end
