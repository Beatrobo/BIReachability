Pod::Spec.new do |s|
  s.name                  = "BIReachability"
  s.version               = "1.0"
  s.summary               = "Reachability のラッパ。 おまけで NSURLConnection の sendAsynchronousRequest をメインスレッドでやるやつも入ってるけど、依存関係はない。"
  s.authors               = {
    "Yusuke SUGAMIYA" => "yusuke.dnpp@gmail.com",
    "Yusuke Ito"      => "novi.mad@gmail.com"
  }
  s.homepage              = "https://github.com/Beatrobo/BIReachability"
  s.source                = { :git => "git@github.com:Beatrobo/BIReachability.git", :tag => "#{s.version}" }
  s.source_files          = 'BIReachability/**/*.{h,m}', 'Optional/**/*.{h,m}'
  s.ios.source_files      = 'BIReachability/**/*.{h,m}', 'Optional/**/*.{h,m}'
  s.osx.source_files      = 'BIReachability/**/*.{h,m}', 'Optional/**/*.{h,m}'
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'
  s.requires_arc          = true

  s.dependency 'Reachability'

  s.license = {
   :type => "Beatrobo Inc Library",
   :text => ""
  }
end
