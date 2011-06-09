class Enterprise < ActiveRecord::Base
  has_many :content_persons, :dependent => :destroy
  has_many :enterprise_receipts, :dependent => :destroy
  accepts_nested_attributes_for :content_persons, :allow_destroy => :true,:reject_if => proc{ |attrs| attrs.all? { |k, v| v.blank? } }
end
