class Patient < ActiveRecord::Base
    has_many :meds
end