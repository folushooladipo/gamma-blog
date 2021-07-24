class UpdateArticlesColumns < ActiveRecord::Migration[6.1]
  def change
    change_column :articles, :title, :string, presence: true, length: { minimum: 5, maximum: 150 }
    change_column :articles, :description, :text, presence: true, length: { minimum: 10, maximum: 300 }
  end
end
