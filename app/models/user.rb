class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  enum role: [:employer, :applicant]
  # def employer?
  #   self.role == "employer"
  # end

  # def applicant?
  #   self.role == "applicant"
  # end
end
