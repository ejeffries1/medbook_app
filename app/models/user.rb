class User < ActiveRecord::Base
    has_many :medications
end