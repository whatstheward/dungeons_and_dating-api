class Stat < ApplicationRecord
  belongs_to :character, optional:true

  validates :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 20}

  
end
