# include the MD5 gem, this should be part of a standard ruby install
# copied from gravatar.rb plugin
require 'digest/md5'

module Jekyll

	class GravatarForEmail < Liquid::Tag

        def initialize(tag_name, options, token)
        	super

			options = options.split(' ').map {|i| i.strip }
		    @email = nil
		    @size = nil
		    options.each do |option|
		      @email = $1 if option =~ /email:(\S+)/ 
		      @size = $1 if option =~ /size:(\S+)/
		    end
        end

        # ref: http://www.createdbypete.com/articles/create-a-custom-liquid-tag-with-a-jekyll-plugin/
        def lookup(context, name)
		    lookup = context
		    name.split(".").each { |value| lookup = lookup[value] }
	    	lookup
		end

		def render(context)
			if @email.nil? || @email.empty?
				return "ERROR - gravatar email missing"
			end

			email_address = lookup(context, @email)

			# change the email address to all lowercase
			email_address = email_address.downcase

			# create an md5 hash from the email address
			gravatar_hash = Digest::MD5.hexdigest(email_address)

			# compile the full Gravatar URL
			image_src = "http://www.gravatar.com/avatar/#{gravatar_hash}"
			
            # append size query to URL if provided in tag
            unless @size.nil? || @size.empty?
              image_src = image_src+"?s=#{@size}"
            end
			# output the full Gravatar URL
			image_src
		end

	end
	
end

# register the "gravatar_image_for_email" tag
Liquid::Template.register_tag('gravatar_image_for_email', Jekyll::GravatarForEmail)
