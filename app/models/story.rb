class Story < ActiveRecord::Base
  has_one :question,dependent: :destroy
end
