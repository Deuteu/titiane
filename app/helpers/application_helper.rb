module ApplicationHelper

	def app_title
		"Titiane"
	end

	# Returns the full title on a per-page basis.
	def full_title(page_title)
		base_title = app_title
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	def trans_cap(key)
		return t(key).mb_chars.capitalize
	end

end
