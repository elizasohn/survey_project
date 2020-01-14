class Survey < ApplicationRecord
  has many :questions, dependent: :destroy
end
