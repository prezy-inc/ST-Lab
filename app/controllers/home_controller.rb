class HomeController < ApplicationController
  def home
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
  end

  def about
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
  end

  def movies
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
  end

  def rallies
    @years=Match.pluck(:year).uniq.sort.reverse ##サイドバー
    @names=Rally.pluck(:name).uniq.sort
  end
end
