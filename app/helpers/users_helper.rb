module UsersHelper

	# A paraméterben adott user gravatar IMG tag-jével tér vissza.
	def gravatar_for(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		return image_tag(gravatar_url, {alt: user.name, class: "gravatar"})
	end
end
