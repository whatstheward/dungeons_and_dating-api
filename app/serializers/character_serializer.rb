class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower
  belongs_to :user
  belongs_to :image
  has_one :stat
  has_many :interests 
  has_many :suitors
  attributes :id, :name, :race, :character_class, :bio, :user_id
  attribute :stats do |object|
    {str:object.stat.strength, 
    dex:object.stat.dexterity,
    con:object.stat.constitution,
    int:object.stat.intelligence,
    wis:object.stat.wisdom,
    cha: object.stat.charisma}
  end
  attribute :image do |object|
    object.image.url
  end
end
