class CreateMWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :m_weapons do |t|
      t.string :name
      t.string :accuracy
      t.string :reach
      t.string :damage
      t.string :ap
      t.string :avail
      t.number :cost

      t.timestamps
    end
  end
end
