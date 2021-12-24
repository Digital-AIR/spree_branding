module SpreeBranding::Spree::VariantDecorator
  def self.prepended(base)
    base.validates :height, :width, :depth, presence: true
    base.validates :weight, numericality: { greater_than: 0.00 }
  end
end

Spree::Variant.prepend SpreeBranding::Spree::VariantDecorator
