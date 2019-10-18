class User < ApplicationRecord
  include NormalUploader::Attachment(:photo)
  validates :name, presence: true
end
