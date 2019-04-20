class RunnerController < ApplicationController
	#Create a new Shadowrunner with metatype initial attributes.  Will need to increase attributes via INCREASE_ATTRIBUTE.
	def create
		runner = Runner.new(runner_params)
		if runner.set_initial_attributes
			head :accepted
		else
			head :error
		end
	end

	#Create a new Shadowrunner with supplied attributes.  Will not check for validations.
	def create_runner
		#Create a new runner
		@runner = Runner.new

		#Set the new runenr attributes and skill ranks
		if @runner.new_runner(params[:runner], params[:skills])
			#If successful, return the new runner
			#head :accepted
			render json: @runner, :status => 200
		else
			#Else return an error message
			#head :error
			render json: {msg: "Error creating new Shadowrunner."}, status: 500
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
