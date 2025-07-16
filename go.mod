module github.com/cocmo1024/oocxx-site

go 1.21

require (
	github.com/cocmo1024/hugo-ad-modules v0.0.0
	github.com/cocmo1024/hugo-eeat-info v0.0.0
	github.com/cocmo1024/hugo-seo-enhancer v0.0.0
)

require github.com/adityatelange/hugo-PaperMod v0.0.0-20250524045829-5a4651783fa9 // indirect

replace github.com/cocmo1024/hugo-seo-enhancer => ../modules/hugo-seo-enhancer

replace github.com/cocmo1024/hugo-eeat-info => ../modules/hugo-eeat-info

replace github.com/cocmo1024/hugo-ad-modules => ../modules/hugo-ad-modules
