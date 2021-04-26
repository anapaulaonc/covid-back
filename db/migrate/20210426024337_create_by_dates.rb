class CreateByDates < ActiveRecord::Migration[6.1]
  def change
    create_table :by_dates do |t|
      t.string :name
      t.string :initials
      t.integer :cases
      t.integer :deaths
      t.integer :suspects
      t.date :datetime

      t.timestamps
    end
  end
end
