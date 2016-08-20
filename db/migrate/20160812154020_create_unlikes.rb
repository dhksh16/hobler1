class CreateUnlikes < ActiveRecord::Migration
  def change
    create_table :unlikes do |t|
      t.integer :user_id
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
