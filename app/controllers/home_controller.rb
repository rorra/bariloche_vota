class HomeController < ApplicationController
  def votes
    @votes_yes = Table.sum(:votes_yes)
    @votes_no = Table.sum(:votes_no)
  end

  def schools
    @data = []
    School.includes(:tables).order(:name).all.each do |school|
      votes_yes = school.tables.sum(:votes_yes)
      votes_no = school.tables.sum(:votes_no)
      votes = votes_yes + votes_no
      @data << {id: school.id, name: school.name, processed: votes != 0, votes_yes: votes_yes, votes_no: votes_no}
    end
  end

  def grid
    @schools = School.includes(:tables).order(:name)
  end
end
