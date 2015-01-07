class CreateBranche < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name, null: false
    end

    add_index :branches, :name, unique: true
  end
end
