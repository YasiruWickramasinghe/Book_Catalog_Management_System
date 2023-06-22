class Book < ApplicationRecord
    belongs_to :user

    validates :title, presence: { message: "Title is required" }
    validates :author, presence: { message: "Author is required" }
    validates :genre, presence: { message: "Genre is required" }
    validates :year_of_publication, presence: { message: "Year is required" }, numericality: {
        greater_than_or_equal_to: 1900,
        less_than_or_equal_to: Date.current.year,
        message: "Year must be between 1900 and #{Date.current.year}"
      }
end
