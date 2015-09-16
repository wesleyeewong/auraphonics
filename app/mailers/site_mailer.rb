class SiteMailer < ApplicationMailer
	default from: "auraphonics@gmail.com"

	def sent(name, email, subject, body)

		@name = name
		@email = email
		@subject = subject
		@body = body

		mail(to: "auraphonics@gmail.com", subject: @subject)

	end

end
