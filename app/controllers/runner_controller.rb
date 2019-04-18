class RunnerController < ApplicationController
	#Create a new Shadowrunner with metatype initial attributes.  Will need to increase attributes via INCREASE_ATTRIBUTE.
	def create
		runner = Runner.new(runner_params)
		if runner.set_initial_attributes
			render head :success
		else
			render head :error
		end
	end

	#Create a new Shadowrunner with supplied attributes.  Will not check for validations.
	def create_runner
		#Create a new runner
		@runner = Runner.new(runner_params)

		#Set the new runenr attributes and skill ranks
		if @runner.new_runner(runner_params, params[:skills])
			#If successful, return the new runner
			render json: @runner
		else
			#Else return an error message
			render json: {head: error, msg: "Error creating new Shadowrunner."}
		end
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
		params.require(:runner).permit(:name, :concept, :user_id, :metatype_id, :agility, :body, :reaction, :strength, :willpower,
		:logic, :intuition, :charisma)
	end
end
