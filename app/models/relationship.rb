class Relationship < ApplicationRecord
    belongs_to :interest, class_name: 'Character'
    belongs_to :suitor, class_name: 'Character'
end
