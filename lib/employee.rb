require 'securerandom'


class Employee < ActiveRecord::Base
  belongs_to :store

  validates_presence_of :first_name, :last_name, :store_id, :hourly_rate
  validates :hourly_rate,
      numericality: {
        only_integer: true,
        greater_than_or_equal_to: 40,
        less_than_or_equal_to: 200
      }

  after_create :create_random_password

  private

  def create_random_password
    self.password = SecureRandom.hex(4)
    self.save
  end
end