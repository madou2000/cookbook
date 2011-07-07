class Recipe < ActiveRecord::Base
  belongs_to :category
  validates_presence_of :title,:description,:instructions,:message => "est obligatoire."
end
