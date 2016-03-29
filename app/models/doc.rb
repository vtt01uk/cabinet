class Doc < ActiveRecord::Base
  #establish associations
  belongs_to :user
end
