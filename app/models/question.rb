class Question < ActiveRecord::Base
  belongs_to :story
  serialize :choices, Hash
end
