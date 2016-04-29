class Blog
	def initialize
		@@total_posts = 0
		@@blog = Array.new
	end

	def save_new_post(blog_post)
		@@blog << blog_post
		@@total_posts += 1
	end
	
	def publish_blog
		@@blog.each do |post|
			puts "#{post}"
		end
		return nil
	end

end
		
class BlogPost < Blog

	def initialize
		super
		create_blog_post
	end
	
	attr_accessor :title, :content, :author, :pub_date
	
	def create_blog_post
		create_flag = 'Y'
		
		while create_flag == 'Y'
			print "Enter a title: "
			self.title = gets.chomp
			print "Enter your content: "
			self.content = gets.chomp
			print "Enter your name: "
			self.author = gets.chomp
			self.pub_date = Time.now.strftime("%d/%m/%Y %H:%M")
			blog_post = 'Title: ' + self.title + '. Post: ' + self.content + '. By: ' + self.author + '. Published: ' + self.pub_date
			save_new_post(blog_post)
			print "Create another blog post Y/N?"
			create_flag = gets.chomp.upcase
		end
	end
end

my_blog = BlogPost.new
print my_blog.publish_blog
