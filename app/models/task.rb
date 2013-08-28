class Task < ActiveRecord::Base
  attr_accessible :item, :price
  validates_presence_of :item , :on => :create
  validates_presence_of :price , :unless => 'item.blank?'
end
