class Blog
 	def initialize
 		@posts = []
 		
 		@current_page = 1
 		@posts_per_page = 3
	end

	def add_post(post_title)
		@posts.push(post_title)
	end

	def next_page
		@current_page +=1
		publish_front_page
	end

	def previous_page
		@current_page -=1
		publish_front_page
	end

	def publish_front_page
		# Sorting by date
		sorted_date = @posts.sort_by do | post |
				post.date
			end
		#	
		first = (@current_page-1)*3
		last = first + (@posts_per_page - 1)

		(sorted_date.reverse[first..last]).each do | publish |
			publish.display_post
			for x in 1..20
	 			print "-"
	 			end
 			puts "\n"
		end
		pagination
	end

	def pagination
		pages = ""
		page_count = (@posts.length/3.0).ceil
		(1..page_count).each do |num|
			if num == @current_page
				pages += num.to_s.colorize(:cyan) + " "
			else
				pages += num.to_s + " "
			end
		end
		puts pages 
	end
end

# Method next page
	# On next page, check if last page
# Method previous page 
	# On previous page, check if first page 
# Include loop of user inputs