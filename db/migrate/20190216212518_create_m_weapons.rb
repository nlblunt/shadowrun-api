class CreateMWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :m_weapons do |t|
      t.string :name
      t.integer :damage

      t.timestamps
    end
  end
end
