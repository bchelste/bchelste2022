Pod::Spec.new do |s|
  s.name             = 'bchelste2022'
  s.version          = '0.1.8'
  s.summary          = 'bchelste2022'

  s.description      = <<-DESC
'My first pod for Day 08 of piscineIOS School21'
                       DESC

  s.homepage         = 'https://github.com/bchelste/bchelste2022'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bchelste' => 'bchelste@gmail.com' }
  s.source           = { :git => 'https://github.com/bchelste/bchelste2022.git', :tag => s.version.to_s }
 
  s.swift_version = '5.0'
  s.ios.deployment_target = '12.0'
  s.module_name = 'ArticleManager'

  s.source_files = ['Source/**/*.swift']
  
  s.resource_bundles = {
     'bchelste2022' => ['Source/*.xcdatamodeld']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'CoreData'
  
end
