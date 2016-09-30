class OwnerResponse < ApplicationRecord
  # Direct associations

  belongs_to :owner,
             :class_name => "Ownership",
             :foreign_key => "ownership_id"

  belongs_to :review

  # Indirect associations

  # Validations

end
