class Comment < ActiveRecord::Base
  belongs_to :cooking_show
  belongs_to :user
end
