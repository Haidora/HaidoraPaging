Pod::Spec.new do |s|
  s.name             = "HaidoraPaging"
  s.version          = "0.1.0"
  s.summary          = "通用分页配置."
  s.description      = <<-DESC
                       DESC
  s.homepage         = "https://github.com/Haidora/HaidoraPaging"
  s.license          = 'MIT'
  s.author           = { "mrdaios" => "mrdaios@gmail.com" }
  s.source           = { :git => "https://github.com/Haidora/HaidoraPaging.git", :tag => s.version.to_s }
  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.frameworks = 'UIKit', 'Foundation'
end
