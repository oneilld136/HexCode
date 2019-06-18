class CreateSpellbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :spellbooks do |t|
      t.integer :user_id
      t.integer :spell_id

      t.timestamps
    end
  end
end
