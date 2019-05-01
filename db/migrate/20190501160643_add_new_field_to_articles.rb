class AddNewFieldToArticles < ActiveRecord::Migration[5.2]
  def change
  	add_column :articles, :read_time, :string
  end
end
