class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :attribute
      t.string :category
      t.boolean :defaultable

      t.timestamps
    end
  end
end
