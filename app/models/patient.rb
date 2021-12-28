class Patient < ApplicationRecord
  belongs_to :doctor
  belongs_to :ward
end
