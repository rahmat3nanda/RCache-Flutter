#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint rcache_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'rcache_flutter'
  s.version          = '1.0.0'
  s.summary          = 'A new Flutter project.'
  s.description      = <<-DESC
A new Flutter project.
                       DESC
  s.homepage         = 'https://github.com/rahmat3nanda/RCache-Flutter.git'
  s.license          = { :type => 'MIT', :file => '../LICENSE' }
  s.author           = { 'Rahmat Trinanda Pramudya Amar' => 'rahmat3nanda@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  s.dependency 'RCache', '1.0.3'
end
