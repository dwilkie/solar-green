class CreateProducts < ActiveRecord::Migration
  def change
      create_table(:products) do |t|
        t.string :name, null: false
        t.string :type, null: false
        t.text  :description
        t.integer :power_rating
        t.integer :voltage
        t.integer :amps
      end
  end
end
