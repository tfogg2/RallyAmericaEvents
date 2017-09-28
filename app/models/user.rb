class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable, :registerable
  has_many :volunteers
  has_attached_file :avatar #,
  # :styles => {
  #     :thumbnail => '100x100>',
  #     :regular => '140x200>'
  #   },
  # :storage => :s3,
  #   :s3_credentials => {
  #     :bucket => ENV['AWS_BUCKET'],
  #     :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
  #     :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
  #   },
  #   :path => ":filename.:extension"

  validates_attachment_content_type :avatar, content_type: ['image/jpeg', 'image/png', 'image/gif']

  def is_super_admin?
    self.super_admin == true
  end
end
