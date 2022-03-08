class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true , greater_than_or_equal_to: 0}
  validate :must_have_men_or_women_apparel

  def must_have_men_or_women_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:men_or_women_apparel, "Stores must carry at least one of the men's or women's apparel")
    end
  end
end
