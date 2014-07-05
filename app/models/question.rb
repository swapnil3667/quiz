class Question < ActiveRecord::Base
	belongs_to :user
	has_one    :multiplechoice
end
