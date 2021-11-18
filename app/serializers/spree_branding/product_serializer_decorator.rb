module SpreeBranding
  module ProductSerializerDecorator
    def self.prepended(base)
      base.attributes :meta_title
    end
  end
end

Spree::V2::Storefront::ProductSerializer.prepend(SpreeBranding::ProductSerializerDecorator)