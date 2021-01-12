class MoviesController < ApplicationController

  def search
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
    @matches=Match.search(params[:search]).order(year: :desc)
    @tournaments=@matches.pluck(:tournament).uniq
    @key=params[:search]
  end

  def year
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
    @y=params[:year]
    @tournaments=Match.where(year: params[:year]).pluck(:tournament).uniq
  end

  def tournament
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
    @y=params[:year]
    @t=params[:tournament]
    @finals=Match.where(tournament: params[:tournament], year: params[:year], round: '100').order(order: "ASC")
    @finalleague=Match.where(tournament: params[:tournament], year: params[:year], round: '101').order(order: "ASC")
    @thirdplace=Match.where(tournament: params[:tournament], year: params[:year], round: '34').order(order: "ASC")
    @semifinals=Match.where(tournament: params[:tournament], year: params[:year], round: '95').order(order: "ASC")
    @fifthplace=Match.where(tournament: params[:tournament], year: params[:year], round: '56').order(order: "ASC")
    @seventhplace=Match.where(tournament: params[:tournament], year: params[:year], round: '78').order(order: "ASC")
    @semififthplace=Match.where(tournament: params[:tournament], year: params[:year], round: '5678').order(order: "ASC")
    @quarterfinals=Match.where(tournament: params[:tournament], year: params[:year], round: '90').order(order: "ASC")
    @seventh=Match.where(tournament: params[:tournament], year: params[:year], round: '7').order(order: "ASC")
    @sixth=Match.where(tournament: params[:tournament], year: params[:year], round: '6').order(order: "ASC")
    @fifth=Match.where(tournament: params[:tournament], year: params[:year], round: '5').order(order: "ASC")
    @fourth=Match.where(tournament: params[:tournament], year: params[:year], round: '4').order(order: "ASC")
    @third=Match.where(tournament: params[:tournament], year: params[:year], round: '3').order(order: "ASC")
    @second=Match.where(tournament: params[:tournament], year: params[:year], round: '2').order(order: "ASC")
    @first=Match.where(tournament: params[:tournament], year: params[:year], round: '1').order(order: "ASC")
    @leagueA=Match.where(tournament: params[:tournament], year: params[:year], round: '11').order(order: "ASC")
    @leagueB=Match.where(tournament: params[:tournament], year: params[:year], round: '12').order(order: "ASC")
    @leagueC=Match.where(tournament: params[:tournament], year: params[:year], round: '13').order(order: "ASC")
    @leagueD=Match.where(tournament: params[:tournament], year: params[:year], round: '14').order(order: "ASC")
    @rounds=[@finals,@finalleague,@thirdplace,@semifinals,@fifthplace,@seventhplace,@semififthplace,@quarterfinals,@seventh,@sixth,@fifth,@fourth,@third,@second,@first,@leagueA,@leagueB,@leagueC,@leagueD]
  end

end
