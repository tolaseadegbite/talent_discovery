class StaticPagesController < ApplicationController
  def home
    @desired_talents = DesiredTalent.all
  end
end
