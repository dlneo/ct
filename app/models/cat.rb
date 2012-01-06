class Cat < ActiveRecord::Base
  belongs_to :status
  has_many :post
  has_many :content, :through => :post
end
