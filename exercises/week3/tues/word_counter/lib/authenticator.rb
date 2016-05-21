class Authenticator
	# Stuff from the database
	def initialize(proper_username, proper_password)
		@proper_username = proper_username
		@proper_password = proper_password
	end

	def authenticate?(username, password)
		if username == @proper_username && password == @proper_password
			true
		else
			false
		end
	end
end