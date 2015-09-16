class SubmitController < ApplicationController
  def new
  	@submission = Submission.new
  end

  def create
  	#render plain: params[:submission].inspect

  	# submissions.create(blah blah blah)
  	# dont forget is_approved
  	# show and send confirmation letter also display confirmation id

  	@submission = Submission.new(submission_params)

  	if @submission.save
  		redirect_to "/submit/"+@submission.id.to_s
  	else
  		@message = "Sorry somethng went wrong, please try again later, or contact us directly"
  	end


  end

  def show
  	@submission = Submission.find(params[:id])
  end

  private
  def submission_params
  	params.require(:submission).permit(:firstname, :lastname, :artistname, :email, :trackname, :bpm, :key, :link, :comments, :is_admin)
  end
end
