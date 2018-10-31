class Loop < ApplicationRecord
	belongs_to :user
	has_one_attached :file
	file.attach(params[:file])


	validates :file, :presence => true
	validates :title, :presence => true

  validate :correct_document_mime_type

  private

  def correct_document_mime_type
    if file.attached? && !file.content_type.in?(%w(audio/mp3 audio/x-mp3 audio/wav audio/x-wav))
      errors.add(:file, 'Must be an MP3 or WAV file')
    end
  end


end
