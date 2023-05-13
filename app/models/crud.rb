class Crud < ApplicationRecord
  validates :name, presence: true, length: {minimum:3, maximum:50}
  validates :age, numericality: {only_integer: true, :greater_than_or_equal_to => 0}
end
