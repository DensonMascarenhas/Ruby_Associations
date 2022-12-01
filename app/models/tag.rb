class Tag < ApplicationRecord
    has_many :tagings
    has_many :books, through: :tagings

    def to_s
        name
    end
end
