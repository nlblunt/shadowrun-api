class Runner < ApplicationRecord
	validates_presence_of :name, :concept, :user_id, :metatype_id, :body, :agility, :reaction,
						:strength, :willpower, :logic, :intuition, :charisma

	### Runner belongs to both USER and METATYPE
	belongs_to :user
	belongs_to :metatype

	def set_initial_attributes
		self.body = self.metatype.body_start
		self.agility = self.metatype.agility_start
		self.reaction = self.metatype.reaction_start
		self.strength = self.metatype.strength_start
		self.willpower = self.metatype.willpower_start
		self.logic = self.metatype.logic_start
		self.intuition = self.metatype.intuition_start
		self.charisma = self.metatype.charisma_start

		self.save!
	end

	def adjust_attribute(attrib, amount2)
		### Change attribute by amount.  Check to make sure the attribute doesn't
		### exceed the metatype max.
		amount = amount2.to_i
		case attrib
			when "body"
				if(body + amount > metatype.body_max)
					errors.add(:error, "value too high")
					return false
				else
					self.body += amount
				end
			when "agility"
				if(agility + amount > metatype.agility_max)
					errors.add(:error, "value too high")
					return :error
				else
					self.agility += amount
				end
			when "reaction"
				if(reaction + amount > metatype.reaction_max)
					errors.add(:error, "value too high")
					return :error
				else
					self.reaction += amount
				end
			when "strength"
				if(strength + amount > metatype.strength_max)
					errors.add(:error, "value too high")
					return :error
				else
					self.strength += amount
				end
			when "willpower"
				if(willpower + amount > metatype.willpower_max)
					errors.add(:error, "value too high")
					return :error
				else
					self.willpower += amount
				end
			when "logic"
				if(logic + amount > metatype.logic_max)
					errors.add(:error, "value too high")
					return :error
				else
					self.logic += amount
				end
			when "intuition"
				if(intuition + amount > metatype.intuition_max)
					errors.add(:error, "value too high")
					return :error
				else
					self.intuition += amount
				end
			when "charisma"
				if(charisma + amount > metatype.charisma_max)
					errors.add(:error, "value too high")
					return :error
				else
					self.charisma += amount
				end
			end
	end
end
