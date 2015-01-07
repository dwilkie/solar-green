class CreateAddress < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :home_number
      t.string :street
      t.string :group
      t.string :quartier
      t.string :district
      t.string :city
      t.string :country , default: "Cambodia"
      t.belongs_to :branch
    end
  end
end
