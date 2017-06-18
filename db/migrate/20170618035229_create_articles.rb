class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :uid
      t.string :title
      t.text :article

      t.timestamps
    end
  end
end
