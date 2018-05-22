class Store < ActiveRecord::Base
  has_many :employees
  validates :name,
      presence: true,
      length: { minimum: 3 }
  validates :annual_revenue,
      presence: true,
      numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validate :mens_or_womens_apparel?

  before_destroy :store_has_employees?

  private

  def mens_or_womens_apparel?
    errors.add(:mens_or_womens_apparel, "must be assigned") unless mens_apparel === true || womens_apparel === true
  end

  def store_has_employees?
    throw(:abort) if self.employees.size > 0
  end
end