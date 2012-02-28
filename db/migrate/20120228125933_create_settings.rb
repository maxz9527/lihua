class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :company_name
      t.string :address
      t.string :email
      t.string :asia
      t.string :europe
      t.string :africa
      t.string :america

      t.timestamps
    end
  end
end
