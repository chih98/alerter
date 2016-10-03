Pod::Spec.new do |s|


s.platform = :ios
s.ios.deployment_target = '9.0'
s.name = "alerter"
s.summary = "alerter lets a user easily create an alert."
s.requires_arc = true


s.version = "0.1.0"

s.license = { :type => "MIT", :file => "LICENSE" }


s.author = { "Marko Crnkovic" => "marko777.ny@gmail.com" }



# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/chih98/alerter"


# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/chih98/alerter.git", :tag => "#{s.version}"}


# 7
s.framework = "UIKit"

# 8
s.source_files = "alerter/**/*.{swift}"

# 9
s.resources = "alerter/**/*.{png,jpg}"
end
