class Ward < ApplicationRecord
  has_many :patients
  has_many :nurses
end
