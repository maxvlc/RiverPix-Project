class AddPartNameToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :name, :string
  	change_column :posts, :body, :text
  end
end
