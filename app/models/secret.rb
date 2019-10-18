class Secret < ApplicationRecord
  include SecureUploader::Attachment(:photo)
  validates :name, presence: true
end
