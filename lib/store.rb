class Store < ActiveRecord::Base
  has_many :employees
  validate do |store|
    StoreValidator.new(store).validate
  end
  validates :name, length: {minimum: 5} , presence: true
  validates :annual_revenue, numericality: { greater_than: 0 }, presence: true
end
 
class StoreValidator
  def initialize(store)
    @store = store
  end
 
  def validate
    if !@store.mens_apparel && !@store.womens_apparel
      @store.errors[:mens_apparel] << "Mens apparel cannot be blank"
      @store.errors[:womens_apparel] << "Womens apparel cannot be blank"
    end
  end
 
end




# class Store < ActiveRecord::Base
#   has_many :employees
#   validates :name, length: {minimum: 5} , presence: true
#   validates :annual_revenue, numericality: { greater_than: 0 }, presence: true
#   validates_with CheckApparel, fields: [:name]

# end
