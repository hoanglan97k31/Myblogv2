CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => "AKIAJZHWKWA252UV4NLQ",
      :aws_secret_access_key  => "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",
      :region                 => 'us-east-2' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "imageformyblog"
end