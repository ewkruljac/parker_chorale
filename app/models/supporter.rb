class Supporter < ApplicationRecord
  has_attached_file :logo, styles: { medium: "200x200" }

  validates_attachment_content_type :logo, content_type: ["image/jpeg", 
                                                          "image/jpg", 
                                                          "image/png", 
                                                          "image/gif"],
                                            message: "File must be of type jpg, jpeg, gif, or png."

end
