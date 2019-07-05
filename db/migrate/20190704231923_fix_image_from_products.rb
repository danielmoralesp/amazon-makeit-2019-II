class FixImageFromProducts < ActiveRecord::Migration[5.2]
  def self.up
  	rename_column :products, :image, :image_product
  	# rename_column :table, :old_column, :new_column
  end

  def self.down
  	rename_column :products, :image_product, :image
  	# rename_column :table, :new_column, :old_column
  end

  # def change
  # 	add_column
  # 	remove_column
  # end
end
