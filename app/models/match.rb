class Match < ApplicationRecord
  def self.search(search)
    if search
      Match.where(['name1 LIKE ?', "%#{search}%"]).or(Match.where(['name2 LIKE ?', "%#{search}%"]))
    else
      Match.all
    end
  end
end
