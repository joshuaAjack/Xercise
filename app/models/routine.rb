class Routine < ActiveRecord::Base
    has_many :user_routines
    has_many :users, through: :user_routines
end