Pod::Spec.new do |s|
  s.name     = 'SubModule1'
  s.version  = '1.0'
  s.license  = 'BSD'
  s.summary  = 'Summary.'
  s.homepage = 'https://github.com/dhanaprakashm/SubModule1'
  s.author   = { "Dhana Prakash Muddineti" => "dhana.muddineti@kroger.com" }
  s.source   = { :git => 'https://github.com/dhanaprakashm/SubModule1',
                 :tag => "v2.0" }

  s.source_files  = "Classes", "Classes/**/*.{h,m}", "SubModule1"
  s.exclude_files = "Classes/Exclude", "SubModule1/KRAppDelegate.{h,m}"
  s.resource  = "*.storyboard"

  s.description = 'description'

  s.requires_arc   = true
  s.ios.platform   = :ios, '7.0'
  
  
end