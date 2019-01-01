
Pod::Spec.new do |s|

  s.name         = "UserDefaultsMgr"
  s.version      = "0.0.1"
  s.summary      = "userdefaults 存储"
  s.description  = <<-DESC
		   一个简单的userdefaults存储封装
                   DESC

  s.homepage     = "https://github.com/Gioures/UserDefaultsMgr"
  s.license      = "Apache-2.0"
  s.author             = { "Gioures" => "756119874@qq.com" }
  s.source       = { :git => "https://github.com/Gioures/UserDefaultsMgr.git", :tag => "#{s.version}" }
  s.source_files  = "UserDefaultsMgr/UserDefaultsMgr/**"

end
