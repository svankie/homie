class Dude < ActiveRecord::Base
	has_secure_password
	validates_presence_of _:password, on: 'create'
end
