class City < ActiveRecord::Base
  belongs_to :province
  has_many :countries
end
