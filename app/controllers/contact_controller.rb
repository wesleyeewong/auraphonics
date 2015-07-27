class ContactController < ApplicationController
  def show
  end

  def sent

  	name = params[:name]
  	email = params[:email]
  	subject = params[:subject]
  	body = params[:body]

  	SiteMailer.sent(name, email, subject, body).deliver

  end
end
