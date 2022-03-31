class Slot < ApplicationRecord
  belongs_to :user
  belongs_to :meeting

  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :length
end
