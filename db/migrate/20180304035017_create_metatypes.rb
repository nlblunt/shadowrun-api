class CreateMetatypes < ActiveRecord::Migration[5.1]
  def change
    create_table :metatypes do |t|
      t.string 	:name
      t.integer :body_start
      t.integer :body_max
      t.integer :agility_start
      t.integer :agility_max
      t.integer :reaction_start
      t.integer :reaction_max
      t.integer :strength_start
      t.integer :strength_max
      t.integer :willpower_start
      t.integer :willpower_max
      t.integer :logic_start
      t.integer :logic_max
      t.integer :intuition_start
      t.integer :intuition_max
      t.integer :charisma_start
      t.integer :charisma_max
      t.integer :edge_start
      t.integer :edge_max
      t.timestamps
    end
  end
end
