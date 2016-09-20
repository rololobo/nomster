class Comment < ActiveRecord::Base
  belongs_to :user
  belongs to :place
end
