class CreateSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :category
      t.boolean :interactive
      t.string :magical_supplies
      t.string :instructions

      t.timestamps
    end
  end
end
