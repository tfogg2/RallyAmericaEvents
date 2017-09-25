class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable, :registerable
  has_many :volunteers
  has_attached_file :avatar
  validates_attachment_content_type :avatar, content_type: ['image/jpeg', 'image/png', 'image/gif']
end
