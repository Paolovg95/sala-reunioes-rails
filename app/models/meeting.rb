class Meeting < ApplicationRecord
  TIMES = [6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23]
  DAYS = ["Segunda","Terca","Quarta","Quinta","Sexta"]

  has_one :slot
  has_one :user, through: :slots

end
