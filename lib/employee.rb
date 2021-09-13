class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, present: true
  validates :last_name, present: true
  validates :hourly_rate, inclusion: { in: 40..200}
  validates :store, present: true
end
