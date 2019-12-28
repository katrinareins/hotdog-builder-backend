class CreateHotdogs < ActiveRecord::Migration[6.0]
  def change
    create_table :hotdogs do |t|
      t.string :condiment
      t.integer :user_id

      t.timestamps
    end
  end
end
