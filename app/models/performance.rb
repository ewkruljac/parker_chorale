class Performance < ApplicationRecord
  has_many :audio_files, dependent: :destroy
  has_attached_file :event_pic
  validates_attachment_content_type :event_pic, :content_type => [
                                          "image/jpeg", "image/gif", "image/png"],
                                           message: 'File must be of filetype jpeg, gif or png'


end
