class Post < ActiveRecord::Base
  
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  
  
  belongs_to :cat
  belongs_to :status
  has_many :content
  
  accepts_nested_attributes_for :content, :allow_destroy => true 
  def to_param
    url
  end
end
