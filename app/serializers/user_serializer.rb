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
      {attributes: charObj}
    end
  end
end
