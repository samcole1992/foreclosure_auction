class Property < ApplicationRecord

  validates :address, presence: true
  validates :purchase_price, presence: true
  validates :selling_price, presence: true

  def self.search(term)
    if term
      where('LOWER (address) LIKE ?', "%#{term.downcase}%")
    else
      all
    end
  end
end
