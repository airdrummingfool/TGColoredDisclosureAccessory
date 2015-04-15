Pod::Spec.new do |s|
  s.name             = "TGColoredDisclosureAccessory"
  s.version          = "0.1.0"
  s.summary          = "A configurable reimplementation of UITableViewCell's disclosure indicator."
  s.homepage         = "https://github.com/airdrummingfool/TGColoredDisclosureAccessory"
  s.license          = 'MIT'
  s.author           = { "Tommy Goode" => "" }
  s.source           = { :git => "https://github.com/airdrummingfool/TGColoredDisclosureAccessory.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'TGColoredDisclosureAccessory.{h,m}'
  s.frameworks = 'UIKit'
end
