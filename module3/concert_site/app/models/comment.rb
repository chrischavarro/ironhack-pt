class Comment < ApplicationRecord
	belongs_to :concert, counter_cache: :comment_count
end
