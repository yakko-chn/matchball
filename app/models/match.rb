class Match < ApplicationRecord

  with_options presence: true do
    validates :room_id, length: { maximum: 7, minimum: 7 }, uniqueness: true
  end



  belongs_to :user
end
