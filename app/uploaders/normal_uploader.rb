require "image_processing/vips"

class NormalUploader < Shrine
  plugin :derivation_endpoint,
         secret_key: "your_secret_key",
         prefix:     "derivations/image"

  derivation :thumbnail do |file, width, height|
    ImageProcessing::Vips
                    .source(file)
                    .resize_to_limit!(width.to_i, height.to_i)
  end
end
