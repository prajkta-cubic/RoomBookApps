class Room
    include Mongoid::Document
    field :room_no, type: Integer
    field :capacity, type: Integer
    validates :room_no,  presence: true, uniqueness:true, length: {minimum: 1, maximum: 3}
    validates :capacity,presence: true, length: {minimum: 1, maximum: 100}
end
  