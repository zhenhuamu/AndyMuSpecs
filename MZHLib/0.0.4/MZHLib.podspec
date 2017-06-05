#
#  Be sure to run `pod spec lint MZHLib.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

# ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  These will help people to find your library, and whilst it
#  can feel like a chore to fill in it's definitely to your advantage. The
#  summary should be tweet-length, and the description more in depth.
#

#框架的名字,也是pod search "框架名"
s.name         = "MZHLib"
#框架版本号
s.version      = "0.0.4"
#框架简介
s.summary      = "A Test For MZHLib"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

#框架的描述
s.description  = "The experiment added pod support for MZHLib"
#框架的主页
s.homepage     = "https://github.com/zhenhuamu/BaiduMobStat/tree/master"

# s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


# ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Licensing your code is important. See http://choosealicense.com for more info.
#  CocoaPods will detect a license file if there is a named LICENSE*
#  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
#

#s.license      = "MIT (example)"

#框架遵守的开源协议
s.license      = { :type => "MIT", :file => "BaiduMobStat/LICENSE" }


# ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Specify the authors of the library, with email addresses. Email addresses
#  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
#  accepts just a name if you'd rather not provide an email address.
#
#  Specify a social_media_url where others can refer to, for example a twitter
#  profile URL.
#

#框架的作者
s.author             = { "AndyMu" => "muzhenhua0601@163.com" }

# Or just: s.author    = "muzhenhua"
# s.authors            = { "muzhenhua" => "muzh@2345.com" }
# s.social_media_url   = "http://twitter.com/muzhenhua"

# ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  If this Pod runs only on iOS or OS X, then specify the platform and
#  the deployment target. You can optionally include the target after the platform.
#

# s.platform     = :ios

#框架支持的平台和最低系统版本
s.platform     = :ios, "7.0"

#  When using multiple platforms
# s.ios.deployment_target = "5.0"
# s.osx.deployment_target = "10.7"
# s.watchos.deployment_target = "2.0"
# s.tvos.deployment_target = "9.0"


# ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Specify the location from where the source should be retrieved.
#  Supports git, hg, bzr, svn and HTTP.
#

#框架的资源路径:路径可以指向远端代码库，也可以指向本地项目
s.source       = { :git => "https://github.com/zhenhuamu/BaiduMobStat.git", :tag => "0.0.4" }


# ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  CocoaPods is smart about how it includes source code. For source files
#  giving a folder will include any swift, h, m, mm, c & cpp files.
#  For header files it will include any header in the folder.
#  Not including the public_header_files will make all headers public.
#

#框架被导时，会导入BaiduMobStat文件夹下所有的.h和.m文件
s.source_files  =  "BaiduMobStat/*.{h,m}"
#框架公开的头文件
s.public_header_files = "BaiduMobStat/*.h"

#s.exclude_files = "Classes/Exclude"



# ――― Resources ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――= "MZHLib"――――― #
#
#  A list of resources included with the Pod. These are copied into the
#  target bundle with a build phase script. Anything else will be cleaned.
#  You can preserve files from being cleaned, please don't preserve
#  non-essential files like tests, examples and documentation.
#

#框架被其他工程引入时，会导入Assets目录下的资源文件
s.resource_bundles = {
"MZHLib" => "BaiduMobStat/Assets/*.{mp3,png}"
}

# s.resource  = "icon.png"
# s.resources = "Resources/*.png"

# s.preserve_paths = "FilesToSave", "MoreFilesToSave"


# ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Link your library with frameworks, or libraries. Libraries do not include
#  the lib prefix of their name.
#

# s.framework  = "SomeFramework"
# s.library   = "iconv"

#框架库依赖的framework
s.frameworks = "JavaScriptCore", "Security","CoreLocation","SystemConfiguration", "CoreTelephony","CoreGraphics","UIKit","Foundation"
#框架库依赖的动态库
s.libraries = "z", "stdc++"
#引用自己生成的.a文件
s.vendored_libraries = "BaiduMobStat/*.a"

#引用自己生成的framework
#s.vendored_frameworks = "BaiduMobStat/**/*.framework"

# ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  If your library depends on compiler flags you can set them in the xcconfig hash
#  where they will only apply to your library. If you depend on other Podspecs
#  you can include multiple dependencies to ensure it works.

#框架是否需要支持ARC
s.requires_arc = true

# s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

#框架依赖的其他第三方库
#s.dependency "JSONKit", "~> 1.4"

#针对特定文件，使用subspec添加特定的配置，如部分文件不使用arc，可如下配置
#s.subspec 'no-arc' do |sp|
#sp.source_files = 'iOS_LoanSDK/Classes/Libs/OpenUDID/OpenUDID.m'
#sp.requires_arc  = false

end
