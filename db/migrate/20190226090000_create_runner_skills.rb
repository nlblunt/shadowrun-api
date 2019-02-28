class CreateRunnerSkills < ActiveRecord::Migration[5.1]
	def change
		create_table :runners_skills do |t|
			t.belongs_to :runner
			t.belongs_to :skill
			t.integer	  :rank, :default => 0
		end
	end
end