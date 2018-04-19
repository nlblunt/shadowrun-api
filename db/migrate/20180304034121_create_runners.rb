class CreateRunners < ActiveRecord::Migration[5.1]
  def change
    create_table :runners do |t|
      t.string 	:name
      t.string	:concept
      t.integer :body
      t.integer :agility
      t.integer :reaction
      t.integer :strength
      t.integer :willpower
      t.integer :logic
      t.integer :intuition
      t.integer :charisma
      t.float 	:essence
      t.integer :edge
      t.integer :resonance
      t.integer :magic
      t.integer :karma

      t.belongs_to :user, index: true
      t.belongs_to :metatype
      t.timestamps
    end
  end
end
