class News < ActiveRecord::Base
  has_many :res, dependent: :destroy
end
