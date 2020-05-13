class UserSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower
  attributes :name do |object|
    "#{object.first_name} #{object.last_name}"
  end
  attributes :email

  attribute :characters do |obj|
    obj.characters.map do |char| 
      charObj = char.attributes
      charObj["image"] = char.image.url
      charObj["relationships"] = char.suitors
      {attributes: charObj}
    end
  end

  attribute :relationships do |obj|
    obj.characters.map{|char| char.suitors.count}.reduce(:+)
  end

  attribute :best_relationship do |obj|
    obj.best_relationship
  end
end
