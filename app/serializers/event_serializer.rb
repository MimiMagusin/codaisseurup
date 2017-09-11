class EventSerializer < ActiveModel::Serializer
  attributes :id

  has_many :registrations
end
