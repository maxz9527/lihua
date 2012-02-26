class Product < ActiveRecord::Base
  belongs_to :catalog
  has_attached_file :image,:styles => {:large=>"500X500>",:medium=>"300x300>",:thumb => "100x100>"}
end
