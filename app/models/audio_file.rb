class AudioFile < ApplicationRecord
  belongs_to :performance
  has_attached_file :mp3, :processors => [:transcoder]
  validates_attachment_content_type :mp3, :content_type => [
                                          'application/mp3',
                                          'application/x-mp3',
                                          'audio/mpeg',
                                          ['audio/mpeg'],
                                          'audio/mp3',
                                          'application/pdf',
                                          /\Avideo\/.*\Z/],
                                           message: 'File must be of filetype .mp3, .pdf or .mov'
end
