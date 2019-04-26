class SkillController < ApplicationController
  def index
    @skills = Skill.all
    render json: @skills
  end
end
