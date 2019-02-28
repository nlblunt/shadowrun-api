class RunnersSkill < ActiveRecord::Base
	belongs_to :skill
	belongs_to :runner
end