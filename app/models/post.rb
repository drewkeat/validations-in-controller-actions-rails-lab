class Post < ActiveRecord::Base
    # The title cannot be blank
    validates :title, length: {minimum: 1}
    # The category is either "Fiction" or "Non-Fiction"
    validates_inclusion_of :category, in: %w( Fiction Non-Fiction ), on: :create, message: "Category must be Fiction or Non-Fiction"
    # The content is at least 100 characters long.
    validates :content, length: {minimum: 100}

end
