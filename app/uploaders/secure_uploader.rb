class SecureUploader < Shrine
  plugin :derivation_endpoint,
         secret_key: "your_secret_key",
         prefix:     "secure/derivations/image",
         upload: true

  derivation :thumbnail do |file, _model_name, _id, width, height|
    ImageProcessing::Vips
        .source(file)
        .resize_to_limit!(width.to_i, height.to_i)
  end
end
