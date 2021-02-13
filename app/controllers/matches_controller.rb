class MatchesController < ApplicationController
  before_action :authenticate_user!, only: [:new,:show]
  
  def index
    @matches = Match.all
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


  def show
    @match = Match.find(params[:id])
  end

  private
   def match_params
    params.require(:match).permit(:room_id, :inning,:speed,:retire,:spirits,:memo).merge(user_id: current_user.id)
   end

    def set_user
      @user = User.find(params[:id])
    end
end
