Pod::Spec.new do |s|
  s.name          = "BIReachability"
  s.version       = "0.0.2"
  s.summary       = "Reachability のラッパ。 おまけで NSURLConnection の sendAsynchronousRequest をメインスレッドでやるやつも入ってるけど、依存関係はない。"
  s.authors       = {
                      "Yusuke SUGAMIYA" => "yusuke.dnpp@gmail.com",
                      "Yusuke Ito"      => "novi.mad@gmail.com"
  }
  s.homepage      = "https://github.com/Beatrobo/BIReachability"
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'
  s.source        = { :git => "git@github.com:Beatrobo/BIReachability.git", :tag => "0.0.2" }
  s.source_files  = 'BIReachability/**/*.{h,m}', 'Optional/**/*.{h,m}'
  s.requires_arc  = true
  s.dependency 'Reachability'
    s.license      = {
   :type => "Beatrobo Inc Library",
   :text => ""
  }
end
