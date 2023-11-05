class CreateCookbooks < ActiveRecord::Migration[7.1]
  def change
    create_table :cookbooks do |t|
      t.string :name
      t.string :picture
      t.string :difficulty
      t.string :prep_time
      t.string :total_time
      t.string :ingredients
      t.string :preparation
      t.string :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
