class CreateWeights < ActiveRecord::Migration[6.1]
  def change
    create_table :weights do |t|
      t.string :height
      t.string :weight
      t.string :bmi

      t.timestamps
    end
  end
end
