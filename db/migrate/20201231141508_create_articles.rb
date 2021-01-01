class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :user_id, null: false
      t.string :title, null: false, :default => 'タイトルがありません。'
      t.string :content, null: false, :default => '中身がありません。'
      t.timestamps
    end
  end
end
