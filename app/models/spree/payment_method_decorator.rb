module Spree
  PaymentMethod.class_eval do
    attr_accessible :icon

    has_attached_file :icon,
      styles: { mini: '32x32>', normal: '128x128>' },
      default_style: :mini,
      url: '/spree/payment_methods/:id/:style/:basename.:extension',
      path: ':rails_root/public/spree/payment_methods/:id/:style/:basename.:extension',
      convert_options: { all: '-strip -auto-orient -colorspace sRGB' }

    include Spree::Core::S3Support
    supports_s3 :icon
  end
end
