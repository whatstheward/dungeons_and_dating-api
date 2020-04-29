class UserSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower
  attributes :name do |object|
    "#{object.first_name} #{object.last_name}"
  end
  attributes :email
  has_many :characters
end
