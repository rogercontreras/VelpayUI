#
# Be sure to run `pod lib lint VelpayUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VelpayUI'
  s.version          = '0.1.3'
  s.summary          = 'A short description of VelpayUI.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "Utilice este pod para crear interfaz gráfica basada en los elementos de Velpay."

  s.homepage         = 'https://github.com/rogercontreras/VelpayUI'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Rogelio Contreras' => 'roger.contreras.vl@gmail.com' }
  s.source           = { :git => 'https://github.com/rogercontreras/VelpayUI.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '8.0'

  s.source_files = 'VelpayUI/Classes/**/*'
  
#   s.resource_bundles = {
#     'VelpayUI' => ['VelpayUI/Assets/*.png']
#   }

   s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
