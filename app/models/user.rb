class User < ApplicationRecord
    has_many :characters

    validates :email, presence: true, uniqueness: true
    has_secure_password

    def best_relationship
        relationships = self.characters.map do |character|
            if character.interests.length > 0
                character.interests
            end
        end.flatten.compact
        relationships.max_by{|rel| rel.score}.suitor
    end
end
