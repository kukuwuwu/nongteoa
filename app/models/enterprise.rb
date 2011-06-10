class Enterprise < ActiveRecord::Base
  has_many :content_persons, :dependent => :destroy
  has_many :enterprise_receipts, :dependent => :destroy
  accepts_nested_attributes_for :content_persons, :allow_destroy => :true,:reject_if => proc{ |attrs| attrs.all? { |k, v| v.blank? } }

  def province_city_country
    province = Province.find self.province_id
    city = City.find self.city_id
    country = Country.find self.country_id
    "#{province.title if province} #{city.title if city} #{country.title if country}"
  end


end
