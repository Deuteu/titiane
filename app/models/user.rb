class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable => Sends emails with confirmation instructions and verifies whether an account is already confirmed during sign in
  # :lockable
  # :timeoutable
  # :omniauthable
  # :registerable => Handles signing up users through a registration process, also allowing them to edit and destroy their account
  # :recoverable => Resets the user password and sends reset instructions
  # :validatable => Provides validations of email and password. It's optional and can be customized, so you're able to define your own validations
  devise :database_authenticatable, :rememberable, :trackable
end
