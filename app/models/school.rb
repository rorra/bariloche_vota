class School < ActiveRecord::Base
  has_many :tables

  attr_accessible :name, :address
end
