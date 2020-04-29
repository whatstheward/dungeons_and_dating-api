class Character < ApplicationRecord
    belongs_to :user, optional: true
    has_one :stat
    has_many :interests, foreign_key: :interest_id, class_name: 'Relationship'
    has_many :suitors, through: :interests

end
