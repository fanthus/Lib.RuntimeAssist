Pod::Spec.new do |s|
  s.name         = "FRRuntimeHelper" # 项目名称
  s.version      = "1.0.0"        # 版本号 与 你仓库的 标签号 对应
  s.license      = "MIT"          # 开源证书
  s.summary      = "A tool to print class info with runtime methods" # 项目简介

  s.homepage     = "https://github.com/fanxiushan/Lib.RuntimeAssist" # 你的主页
  s.source       = { :git => "https://github.com/fanxiushan/Lib.RuntimeAssist.git", :tag => "#{s.version}" }#你的仓库地址，不能用SSH地址
  s.source_files = "RuntimeAssist/*.{h,m}" # 你代码的位置， RuntimeAssist/*.{h,m} 表示 FRRuntimeHelper 文件夹下所有的.h和.m文件
  s.requires_arc = true # 是否启用ARC
  s.platform     = :ios, "8.0" #平台及支持的最低版本
  s.frameworks   = "UIKit", "Foundation" #支持的框架
  # s.dependency = "AFNetworking" # 依赖库
  
  # User
  s.author             = { "BY" => "fanxiushan2008@163.com" } # 作者信息
  s.social_media_url   = "http://fanxiushan.github.io" # 个人主页

end