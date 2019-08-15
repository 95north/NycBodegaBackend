class User < ApplicationRecord
    has_many :reviews
    has_many :bodegas, through: :reviews

end
