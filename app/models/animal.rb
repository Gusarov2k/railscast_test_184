class Animal < ActiveRecord::Base
  belongs_to :category

  has_many  :sumptoms
  has_many  :problems, through: :sumptoms

  accepts_nested_attributes_for :problems
end
