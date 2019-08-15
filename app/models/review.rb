class Review < ApplicationRecord
    belongs_to :user
    belongs_to :bodega
end
