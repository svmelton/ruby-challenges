# Create a parent class called something like ‘Blog’
#that will keep track of how many blog posts you have created, and what to do with them.

class Blog
	@@blog_posts = []
	@@blog_post_no = 0

	def self.all
		@@blog_posts
end

 def self.add(thing)
    @@all_blog_posts << thing
    @@num_blog_posts += 1
 end

 def self.publish
 	@@blog_posts.each do |post|
 		puts "Title:\n #{post.title}"
      puts "Body:\n #{post.content}"
      puts "Publish Date:\n #{post.created_at}"
     end
 end


#Save all blog posts in an array or a hash in the parent class. 
	def save_blog_posts
		blog_array = Array.new()
		blog_array.push
	end 
end



#Create a class that will be the blueprint for each ‘BlogPost’ object. 
#This class should set a title, content, a publish date, and maybe even an author for each NEW post
class Post < Blog
	def self.create
    post = new
    puts "Name your blog post:"
    post.title = gets.chomp
    puts "Your blog post content:"
    post.content = gets.chomp
    post.created_at = Time.now
    post.save
   	
   	puts "Do you want to create another blog post? [Y/N]"
	gets.chomp.downcase = blog_answer

	create if (blog_answer == 'y')
	

	def title
		@title
	end

	def title=(title)
		title = @title
	end

	def date
		@date
	end

	def date=(date)
		date = @date 
	end

	def author
		@author
	end

	def author(author)
		author = @author
	end

	def content
		@content
	end

	def content(content)
		content = @content
	end
end
end

Post.create
all_blog_posts = Post.all
puts all_blog_posts.inspect
Post.publish




