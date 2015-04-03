Pod::Spec.new do |s|
  s.name                  = "BIReachability"
  s.version               = "1.2"
  s.summary               = "Reachability Wrapper."
  s.authors               = {
    "Yusuke SUGAMIYA" => "yusuke.dnpp@gmail.com",
    "Yusuke Ito"      => "novi.mad@gmail.com"
  }
  s.homepage              = "https://github.com/Beatrobo/BIReachability"
  s.source                = { :git => "git@github.com:Beatrobo/BIReachability.git", :tag => "#{s.version}" }
  source_files            = 'BIReachability/**/*.{h,m}'
  s.source_files          = source_files
  s.ios.source_files      = source_files
  s.osx.source_files      = source_files
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'
  s.requires_arc          = true

  s.dependency 'Reachability'
  s.dependency 'dp_exec_block_on_main_thread'

  s.license = {
   :type => "Beatrobo Inc Library",
   :text => ""
  }
end
