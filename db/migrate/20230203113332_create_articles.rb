class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :author
      t.string :title
      t.date  :date
      t.string :category
      t.string :body
    end
  end
end
