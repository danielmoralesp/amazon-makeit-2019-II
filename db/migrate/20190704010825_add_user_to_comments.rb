class AddUserToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :user, :string, limit: 40, default: false, null: false
    add_column :comments, :rating, :integer, default: false, null: false
  end
end
