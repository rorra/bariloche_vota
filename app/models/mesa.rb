class Mesa < ActiveRecord::Base
  attr_accessible :blanco, :no, :nombre, :nulo, :si, :tmb, :tmn, :tmn, :tms
  belongs_to :escuela
end
