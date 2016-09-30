class Review < ApplicationRecord
  # Direct associations

  has_many   :owner_responses,
             :dependent => :destroy

  belongs_to :restaurant

  belongs_to :user

  # Indirect associations

  # Validations

end
