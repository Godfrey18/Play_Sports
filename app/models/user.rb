class User < ApplicationRecord
	
has_one :user_team, dependent: :destroy
has_one :team, through: :user_team
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
