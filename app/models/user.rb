class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable, :registerable
  has_many :volunteers
  has_attached_file :avatar,
  :storage => :s3,
    :s3_credentials => {
      :preserve_files => true,
      s3_host_name: "s3-#{ENV['AWS_REGION']}.amazonaws.com",
      bucket: ENV.fetch('S3_BUCKET_NAME'),
      access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID'),
      secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
      s3_region: ENV.fetch('AWS_REGION')
    }

  validates_attachment_content_type :avatar, content_type: ['image/jpeg', 'image/png', 'image/gif']

  def is_super_admin?
    self.super_admin == true
  end
end
