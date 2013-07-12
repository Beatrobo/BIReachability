# BIReachability

---

require `-fno-objc-arc` flag.

require `SystemConfiguration.framework`

---

`Reachability` のラッパ。

おまけで `NSURLConnection` の sendAsynchronousRequest をメインスレッドでやるやつも入ってるけど、依存関係はない。
