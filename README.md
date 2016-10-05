# jekyll-mulang
A plugin to create multiple language site with Jekyll 3.

## Install & Setup

Install plugin:
```
gem install jekyll-multiple-lang
```

Config:
  - Add some config into `_config.yml` :
```yaml
# settings for multiple-lang
multiple_lang:
  lang: &langs
    en: &lang_en
      baseurl: /en/
      layout: default
      sidebar_title: My Website
      sidebar_description: Website Description
    ja: &lang_ja
      baseurl: /ja/
      layout: default
      sidebar_title: ウェブサイト
      sidebar_description: ウェブサイトなのです
    zh: &lang_zh
      baseurl: /zh/
      layout: default
      sidebar_title: 我的網頁
      sidebar_description: 網頁一些相關介紹

# use `page.en.baseurl` in your templates.
defaults:
  -
    scope:
      path: ""
    values:
      <<: *langs        # use "page.en.sidebar_title" in _includes/*.html
  -
    scope:
      path: "_posts/en"
    values: *lang_en
  -
    scope:
      path: "_posts/ja"
    values: *lang_ja
  -
    scope:
      path: "_posts/zh"
    values: *lang_zh

gems:
  - jekyll-paginate
  - jekyll-mulang
```
  - Modify `Gemfile` file :
```ruby
source 'https://rubygems.org'
gem 'jekyll'

group :jekyll_plugins do
  gem "jekyll-paginate"
  gem "jekyll-mulang"
end
```
  - Create directories that relate to `baseurl` in `_config.yml` :
```
─index.html
　Gemfile
　_config.yml
　en/
　　└ index.html
　ja/
　　└ index.html
　zh/
　　└ index.html
　_posts/
　　　└　en/some.md ..
　　　　 ja/some.md ..
　　　　 zh/some.md ..
```
