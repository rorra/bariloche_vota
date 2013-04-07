class Escuela < ActiveRecord::Base
  attr_accessible :direccion, :nombre
  has_many :mesas
end
