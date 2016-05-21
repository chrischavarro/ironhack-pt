require "colorize"
require_relative('lib/post')
require_relative('lib/blog')
require_relative('lib/sponsored_post')

my_blog = Blog.new

first_post = Post.new("#1 Bomb Ass Post", Time.now, "Some cool content")
second_post = Post.new("#2 Bomb Ass Post", Time.new(2015), "Some cooler content")
third_post = Post.new("#3 Bomb Ass Post", Time.new(2014), "The coolest content")
fourth_post = SponsoredPost.new("Someone threw money at me", Time.new(2013), "AWWW SHIT WE'RE RICH")
fifth_post = Post.new("Adventures of page 2", Time.new(2012), "I hate everything")
sixth_post = Post.new("Ready to Die", Time.new(2011), "Fuck this.")
seventh_post = SponsoredPost.new("Post number seven", Time.new(2010), "I stopped caring")
eighth_post = Post.new("Post number 8", Time.new(2009), "Don't ask for more fun copy")
ninth_post = Post.new("Post number 9", Time.new(2008), "You won't get it.")


my_blog.add_post(first_post)
my_blog.add_post(second_post)
my_blog.add_post(third_post)
my_blog.add_post(fourth_post)
my_blog.add_post(fifth_post)
my_blog.add_post(sixth_post)
my_blog.add_post(seventh_post)
my_blog.add_post(eighth_post)
my_blog.add_post(ninth_post)

my_blog.publish_front_page

puts "Next or Previous"
input = gets.chomp

while input != "Exit"

if input.downcase == "next"
	my_blog.next_page
	puts "Next or Previous"
	input = gets.chomp
elsif input.downcase == "previous"
	my_blog.previous_page
	puts "Next or Previous"
	input = gets.chomp
end

end