class User < ApplicationRecord
	validates name:, :email, :address, :mobile
end
