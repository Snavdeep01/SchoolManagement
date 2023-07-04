class Book < ApplicationRecord
    validates :book_name, presence: true
    validates :author_name, presence: true
end
