class Dog < ApplicationRecord
    validates :title, presence: true,
        length: { minimum: 2 }
end
