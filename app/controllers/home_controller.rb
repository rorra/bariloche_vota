class HomeController < ApplicationController
  def votes
    @votes_yes = Table.sum(:votes_yes)
    @votes_no = Table.sum(:votes_no)
  end

  def schools

  end

  def tables

  end

  def grid

  end
end
