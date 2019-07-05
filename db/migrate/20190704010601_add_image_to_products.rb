class AddImageToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :image, :string
    add_column :products, :color, :string
  end
end
