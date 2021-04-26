class CreateBrazilData < ActiveRecord::Migration[6.1]
  def change
    create_table :brazil_data do |t|
      t.string :country
      t.integer :cases
      t.integer :deaths
      t.integer :confirmer
      t.date :datetime

      t.timestamps
    end
  end
end
