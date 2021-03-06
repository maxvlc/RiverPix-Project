class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :posts
  has_many :comments

  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model

  validates_presence_of   :avatar
  validates_integrity_of  :avatar
  validates_processing_of :avatar
  acts_as_tagger

  def soft_delete
    update_attribute(:delete_at, Time.current)
  end

end
