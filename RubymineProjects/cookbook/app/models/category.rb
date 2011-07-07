class Category < ActiveRecord::Base
  has_many :recipes
  validates_presence_of :name,:message => "est obligatoire."
end
