class Secret < ApplicationRecord
  include SecureUploader::Attachment(:photo)
end
