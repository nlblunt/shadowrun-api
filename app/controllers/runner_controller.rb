class RunnerController < ApplicationController
	#Create a new Shadowrunner with metatype initial attributes.  Will need to increase attributes via INCREASE_ATTRIBUTE.
	def create
		runner = Runner.new(runner_params)
		if runner.set_initial_attributes
			pp "Set Attributes true"
			head :accepted
		else
			pp "Set Attributes false"
			head :error
		end
	end

	#Create a new Shadowrunner with supplied attributes.  Will not check for validations.
	def create_runner
		pp params[:runner]
		#Create a new runner
		#@runner = Runner.new(runner_params)
		@runner = Runner.new
		
		#Set the new runenr attributes and skill ranks
		if @runner.new_runner(params[:runner], params[:skills])
			pp "New Runner Success"
			#If successful, return the new runner
			head :success
			#render json: @runner, status: :success
		else
			pp "New Runner Error"
			#Else return an error message
			#head :error
			render json: {msg: "Error creating new Shadowrunner."}, status: :error
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
