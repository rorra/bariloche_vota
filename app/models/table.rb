class Table < ActiveRecord::Base
  belongs_to :school

  attr_accessible :school, :school_id, :name, :votes_yes, :votes_no, :votes_blank, :votes_nil
end
