class CreateArticlesCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :articles_categories do |t|
      t.references :article, foreign_key: true
      t.references :category, foreign_key: true
    end
  end
end
