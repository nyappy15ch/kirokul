class ScoresController < ApplicationController
  def index
    @hobby = Hobby.find(params[:hobby_id])
    @score = Score.new
  end

  def create
    @hobby = Hobby.find(params[:hobby_id])
    @score = @hobby.scores.new(score_params)
    
    if @score.save
      redirect_to hobby_scores_path(@hobby)
    else
      render :index
    end
  end

  private

  def score_params
    params.require(:score).permit(:your_score, :rival_score).merge(user_id: current_user.id)
  end
end
