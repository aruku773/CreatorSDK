Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "creatorFrameWork"
s.summary = "creatorFrameWork Summary"
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "Qumu License", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "AG" => "AG@Your_Email_Domain.com" }

# For example,
# s.author = { "AG" => "AG@gmail.com" }


# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/aruku773/CreatorSDK"


# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/aruku773/CreatorSDK.git", :branch => "master"}


# 7
s.framework = "UIKit"
s.dependency 'Alamofire', '~> 2.0'
s.dependency 'MBProgressHUD', '~> 0.9.0'

# 8
#s.source_files = "creatorFrameWork/**/*.{swift}"
s.source_files = "creatorFrameWork","creatorFrameWork/{Test}/**/*.swift"


end
