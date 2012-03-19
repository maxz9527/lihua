class CreateCompanyps < ActiveRecord::Migration
  def change
    create_table :companyps do |t|
      t.has_attached_file :image
      t.string :desc

      t.timestamps
    end
  end
end
