class Book < ApplicationRecord
    belongs_to :author
    has_many :comments
    has_many :tagings
    has_many :tags, through: :tagings

    def tag_list
        tags.each do |tag|
            tag.name
        end.join(", ")
    end

    
end
