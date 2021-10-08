class MatchesController < ApplicationController
  def new_match
    @match=Match.new
    @match.year=@ex_match.year
    @match.tournament=@ex_match.tournament
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
  end

  def matches
    @matches=Match.all.order(tournament: "ASC").order(round: "DESC").order(order: "ASC")
    @years=[2020,2019,2018] ##サイドバー
  end

  def create
    @ex_match=Match.create(match_params)
    redirect_to action: :new_match
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
  end

  def edit
    @match=Match.find_by(id: params[:id])
    @years=[2020,2019,2018] ##サイドバー
  end

  def update
    @years=[2020,2019,2018] ##サイドバー
    Match.find_by(id: params[:id]).update(match_params)
    @matches=Match.all.order(tournament: "ASC").order(round: "DESC").order(order: "ASC")
    render "matches"
  end

  private

    def match_params
      params.require(:match).permit(:name1, :name2, :url, :round, :order, :tournament, :game1, :game2, :year, :teams, :team1, :team2, :score1, :score2)
    end

end
