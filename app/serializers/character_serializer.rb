class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower
  belongs_to :user
  has_one :stat
  has_many :interests 
  has_many :suitors
  attributes :name, :race, :character_class, :bio, :img
end
