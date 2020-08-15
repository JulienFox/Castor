class Book < ActiveRecord::Base
  belongs_to :category
end

# app/models/book.rb