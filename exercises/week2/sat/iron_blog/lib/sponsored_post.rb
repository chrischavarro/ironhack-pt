class SponsoredPost < Post
	def initialize(title, date, text)
		@title = "******#{title}******"
		@date = date
		@text = text
	end
end