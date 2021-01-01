class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users, id: false do |t|
      t.string :id, null: false, primary_key: true
      t.string :nickname, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.integer :age, null: false, :default => 20
      t.timestamps
    end
  end
end
