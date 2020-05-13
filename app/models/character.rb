class Character < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :image
    has_one :stat, dependent: :destroy
    has_many :interests, foreign_key: :interest_id, class_name: 'Relationship'
    has_many :suitors, through: :interests  

    def self.except_user(current_user)
        ids = current_user.characters.map{|char| char.id}
        where.not(id: ids)
    end
end
