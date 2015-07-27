class SiteMailer < ApplicationMailer
	default from: "wesleywong1993@gmail.com"

	def sent(name, email, subject, body)

		@name = name
		@email = email
		@subject = subject
		@body = body

		mail(to: "wesleywong1993@gmail.com", subject: @subject)

	end

end
