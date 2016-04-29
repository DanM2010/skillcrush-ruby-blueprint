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
	
	def set_title=(title)
		@title = title
	end
	
	def get_title
		return @title
	end

	def set_content=(content)
		@content = content
	end
	
	def get_content
		return @content
	end

	def set_pub_date=(pub_date)
		@pub_date = pub_date
	end
	
	def get_pub_date
		return @pub_date
	end

	def set_author=(author)
		@author = author
	end
	
	def get_author
		return @author
	end

	def create_blog_post
		create_flag = 'Y'
		
		while create_flag == 'Y'
			print "Enter a title: "
			self.set_title = gets.chomp
			print "Enter your content: "
			self.set_content = gets.chomp
			print "Enter your name: "
			self.set_author = gets.chomp
			self.set_pub_date = Time.now.strftime("%d/%m/%Y %H:%M")
			blog_post = 'Title: ' + self.get_title + '. Post: ' + self.get_content + '. By: ' + self.get_author + '. Published: ' + self.get_pub_date
			save_new_post(blog_post)
			print "Create another blog post Y/N?"
			create_flag = gets.chomp.upcase
		end
	end
end

my_blog = BlogPost.new
print my_blog.publish_blog
