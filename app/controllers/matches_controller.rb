class MatchesController < ApplicationController
  def new_match
    @match=Match.new
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
  end

  def matches
    @matches=Match.all
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
  end

  def create
    Match.create(match_params)
    redirect_to action: :new_match
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
  end

  def edit
    @match=Match.find_by(id: params[:id])
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
  end

  def update
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
    Match.find_by(id: params[:id]).update(match_params)
    @matches=Match.all
    render "matches"
  end
  
  private

    def match_params
      params.require(:match).permit(:name1, :name2, :url, :round, :order, :tournament, :game1, :game2, :year, :teams, :team1, :team2, :score1, :score2)
    end

end
