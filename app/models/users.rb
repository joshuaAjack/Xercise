class Users < ActiveRecord::Base 
    # validates_presence_of :name, :email
    has_secure_password
    has_many :user_routines
    has_many :routines, through: :user_routines
end