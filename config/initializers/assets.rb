Rails.application.config.assets.precompile << 'spree_branding_manifest.js'

Rails.application.config.assets.configure do |env|
    env.export_concurrent = false
  end
  