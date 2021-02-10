class MatchesController < ApplicationController
  def index
  end

  def new
   @match = Match.new
  end

  def create
   @match = Match.new(match_params)

    if @match.save
     redirect_to root_path
    else
     render :new
    end
  end

  private
   def match_params
    params.require(:match).permit(:room_id, :inning,:speed,:retire,:spirits,:memo).merge(user_id: current_user.id)
   end
end
