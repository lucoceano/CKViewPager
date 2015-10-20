Pod::Spec.new do |s|

  s.name         = "CKViewPager"
  s.version      = "2.0.6"
  s.summary      = "You can create sliding tabs with ViewPager."

  s.description  = <<-DESC

          Slide through the contents or select from tabs or slide through tabs and select!

          ## Installation
          Just copy ViewPagerController.m and ViewPagerController.h files to your project.
          Or you can use CocoaPods (as this is the recommended way).
          `pod 'CKViewPager'`

          ## Usage
          Subclass ViewPagerController (as it's a `UIViewController` subclass) and implement dataSource and delegate methods in the subclass.

          ## Requirements
          CKViewPager supports minimum iOS 6 and uses ARC.
          Supports both iPhone and iPad.

          ## Contact
          [Lucas Oceano](mailto:lucoceano@gmail.com)
	  CKViewPagre is based on [ICViewPager](https://github.com/iltercengiz/ICViewPager) with improvements and few bug fix.

          ## Licence
          CKViewPager is MIT licensed. See the LICENSE file for more info.
                   DESC

  s.homepage     = "https://github.com/lucoceano/CKViewPager"
  s.screenshots  = "https://raw.githubusercontent.com/lucoceano/CKViewPager/master/Resources/screen1.png"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Lucas Oceano" => "lucoceano@gmail.com" }
  s.platform     = :ios, '6.0'
  s.source       = { :git => "https://github.com/lucoceano/CKViewPager.git", :tag => s.version.to_s }
  s.source_files = 'CKViewPager/CKViewPager/*.{h,m}'
  s.requires_arc = true

end
