class Runner < ApplicationRecord
	validates_presence_of :name, :concept, :user_id, :metatype_id, :body, :agility, :reaction,
						:strength, :willpower, :logic, :intuition, :charisma

	### Runner belongs to both USER and METATYPE
	belongs_to :user
	belongs_to :metatype

	### Skills
	has_many :runners_skills
	has_many :skills, :through => :runners_skills

	def new_runner(params, skills)
		self.name = params[:name]
		self.user_id = params[:user_id]
		self.metatype_id = params[:metatype_id]
		self.concept = params[:concept]

		self.body = params[:body]
		self.agility = params[:agility]
		self.reaction = params[:reaction]
		self.strength = params[:strength]
		self.willpower = params[:willpower]
		self.logic = params[:logic]
		self.intuition = params[:intuition]
		self.charisma = params[:charisma]

		pp skills
		self.skills << Skill.all

		skills.each do |skill|
			pp skill[:id]
			pc_skill = self.runners_skills.find_by_skill_id(skill[:id])
			if pc_skill
				pc_skill.rank = skill[:rank]
				self.runners_skills << pc_skill
			end
		end
		
		if self.save
			return true
		else
			return false
		end
	end

	def set_initial_attributes
		self.body = self.metatype.body_start
		self.agility = self.metatype.agility_start
		self.reaction = self.metatype.reaction_start
		self.strength = self.metatype.strength_start
		self.willpower = self.metatype.willpower_start
		self.logic = self.metatype.logic_start
		self.intuition = self.metatype.intuition_start
		self.charisma = self.metatype.charisma_start

		if self.save
			return true
		else
			return false
		end
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
					return false
				else
					self.agility += amount
				end
			when "reaction"
				if(reaction + amount > metatype.reaction_max)
					errors.add(:error, "value too high")
					return false
				else
					self.reaction += amount
				end
			when "strength"
				if(strength + amount > metatype.strength_max)
					errors.add(:error, "value too high")
					return false
				else
					self.strength += amount
				end
			when "willpower"
				if(willpower + amount > metatype.willpower_max)
					errors.add(:error, "value too high")
					return false
				else
					self.willpower += amount
				end
			when "logic"
				if(logic + amount > metatype.logic_max)
					errors.add(:error, "value too high")
					return false
				else
					self.logic += amount
				end
			when "intuition"
				if(intuition + amount > metatype.intuition_max)
					errors.add(:error, "value too high")
					return false
				else
					self.intuition += amount
				end
			when "charisma"
				if(charisma + amount > metatype.charisma_max)
					errors.add(:error, "value too high")
					return false
				else
					self.charisma += amount
				end
			end
	end
end
