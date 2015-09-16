class SessionsController < ApplicationController

before_filter :authenticate_user, :only => [:home, :profile, :setting]
before_filter :save_login_state, :only => [:login, :login_attempt]

  def login
  end

  def home
  end

  def profile
  end

  def setting

  	@submission = Submission.all
  	@approve = Approve.all
  	@deny = Deny.all 
  	@completed = Complete.all

  end

  def pending
  	id = params[:id]
  	@submission = Submission.find(id)
  end
  def approved
  	id = params[:id]
  	@approved = Approve.find(id)
  end
  def denied 
  	id = params[:id]
  	@denied = Deny.find(id)
  end
  def completed
  	id = params[:id]
  	@completed = Complete.find(id)
  end

  def update

  	submit_type = params[:submit_type]
  	id = params[:id].to_i
  	from = params[:from]
  	if from == "pending"
  		submission = Submission.find(id)
  	elsif from == "approved"
  		submission = Approve.find(id)
  	elsif from == "denied"
  		submission = Deny.find(id)
  	elsif from == "completed"
  		submission = Complete.find(id)
  	end
  	success = false

  	if submit_type == "update"
  		submission.update_attribute("artistname", params[:artistname])
  		submission.update_attribute("firstname", params[:firstname])
  		submission.update_attribute("lastname", params[:lastname])
  		submission.update_attribute("email", params[:email])
  		submission.update_attribute("trackname", params[:trackname])
  		submission.update_attribute("bpm", params[:bpm])
  		submission.update_attribute("key", params[:key])
  		submission.update_attribute("link", params[:link])
  	elsif submit_type == "approve"
  		success = Approve.create(
  			artistname:  submission.artistname,
  			firstname:  submission.firstname,
  			lastname:  submission.lastname,
  			email:  submission.email,
  			trackname:  submission.trackname,
  			bpm:  submission.bpm,
  			key:  submission.key,
  			link:  submission.link,
  			comments:  submission.comments
  		).save
  	elsif submit_type == "deny"
  		success = Deny.create(
  			artistname:  submission.artistname,
  			firstname:  submission.firstname,
  			lastname:  submission.lastname,
  			email:  submission.email,
  			trackname:  submission.trackname,
  			bpm:  submission.bpm,
  			key:  submission.key,
  			link:  submission.link,
  			comments:  submission.comments
  		).save
  	elsif submit_type == "complete"
  		success = Complete.create(
  			artistname:  submission.artistname,
  			firstname:  submission.firstname,
  			lastname:  submission.lastname,
  			email:  submission.email,
  			trackname:  submission.trackname,
  			bpm:  submission.bpm,
  			key:  submission.key,
  			link:  submission.link,
  			comments:  submission.comments
  		).save
  	end

  	redirect_to(:controller => 'sessions', :action => 'setting')

  	if success
  		submission.destroy
  	end

  end


  def login_attempt
    authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
    if authorized_user
      flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.username}"
      session[:user_id] = authorized_user.id
      if authorized_user.is_admin
      	redirect_to(:action => 'setting')
      end
    else
      flash[:notice] = "Invalid Username or Password"
      flash[:color]= "invalid"
      render "login"	
    end
  end
end
