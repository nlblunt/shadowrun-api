class RunnerController < ApplicationController
	def create
		runner = Runner.new(runner_params)
		runner.set_initial_attributes
		runner.save!
	end

	def increase_attribute
		runner = Runner.find(params[:runner_id])

		if runner.adjust_attribute(params[:attrib], params[:amount])
			head :accepted#, body: nil
		else
			head :bad_request#, body: nil
		end
	end

	private
	def runner_params
		params.require(:runner).permit(:name, :concept, :user_id, :metatype_id)
	end
end
