class CreateRecommends < ActiveRecord::Migration
  def change
    create_table :recommends do |t|
        t.text :list, array: true, default: []
        t.text :p_name, array: true, default: []
        t.string :email
      t.timestamps null: false
    end
  end
end
