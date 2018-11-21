class Problem < ActiveRecord::Base
  has_many  :sumptoms
  has_many  :animals, through: :sumptoms
end
