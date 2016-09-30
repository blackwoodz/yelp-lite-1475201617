class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :tags,
             :class_name => "Tagging",
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
