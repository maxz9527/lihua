class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.has_attached_file :image
      t.references :catalog

      t.timestamps
    end
    add_index :products, :catalog_id
  end
end
