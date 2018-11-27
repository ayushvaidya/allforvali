class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :loops
  has_one_attached :avatar
  validates :avatar, :presence => true

  validates :username, uniqueness: true, presence: true

  validate :correct_document_mime_type

  private

  def correct_document_mime_type
    if avatar.attached? && !avatar.content_type.in?(%w(image/jpg image/jpeg image/gif image/png))
      errors.add(:avatar, 'Must be an image file (jpg, jpeg, gif or png)')
    end
  end


end
