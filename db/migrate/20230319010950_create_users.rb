class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :height
      t.integer :weight
      t.timestamps
    end
  end
end
