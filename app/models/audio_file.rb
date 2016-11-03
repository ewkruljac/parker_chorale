class AudioFile < ApplicationRecord
  has_attached_file :mp3,
    :storage => :s3,
    :s3_credentials => Proc.new{ |a| a.instance.s3_credentials }

  validates_attachment_content_type :mp3, :content_type => [
                                          'application/mp3',
                                          'application/x-mp3',
                                          'audio/mpeg',
                                          ['audio/mpeg'], # note the array around the type
                                          'audio/mp3'],
                                           message: 'File must be of filetype .mp3'
end
