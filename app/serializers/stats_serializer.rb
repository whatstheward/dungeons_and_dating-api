class StatsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma
end
