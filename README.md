BIReachability
===================

### Dependency
* `Reachability`

### Require Framework
* None

# CocoaPods

### How to pass `pod lib lint`
```sh
pod lib lint --allow-warnings --sources='git@github.com:Beatrobo/CocoaPods-Specs.git,https://github.com/CocoaPods/Specs'
```

### How to push private pods
```sh
pod repo push --allow-warnings beatrobo *.podspec
```

# Description

BI is "Beatrobo Inc" prefix.

おまけで `NSURLConnection` の `sendAsynchronousRequest` をメインスレッドでやるやつも入ってる。

`Reachability` に依存関係はない。

ちなみに、おまけが他のライブラリ各所で使われてるという問題が…。
