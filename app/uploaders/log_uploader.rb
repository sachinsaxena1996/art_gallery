# config file for carrierwave
class LogUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w[txt]
  end

  def content_type_whitelist
    ['text/plain']
  end
end
