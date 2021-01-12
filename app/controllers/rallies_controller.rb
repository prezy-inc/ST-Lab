class RalliesController < ApplicationController
  def new_rally
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
    @rally=Rally.new
  end

  def create
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
    Rally.create(rally_params)
    redirect_to action: :new_rally
  end

  def rally_list
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
    @rallies=Rally.all
  end

  def edit_rally
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
    @rally=Rally.find_by(id: params[:id])
  end

  def update
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
    Rally.find_by(id: params[:id]).update(rally_params)
    @rallies=Rally.all
    render "rally_list"
  end

  def player
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
    @name=params[:name]
    @rallies=Rally.where(name: params[:name])
  end

  private
    def rally_params
      params.require(:rally).permit(:name, :url, :img)
    end
end
