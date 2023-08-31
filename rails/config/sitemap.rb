# frozen_string_literal: true

SitemapGenerator::Sitemap.default_host = 'http://www.example.com'
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end

  # エリアページ を追加する
  Office.find_each do |city_id|
    add prefecture_path(1, city_id), priority: 0.7, changefreq: 'daily'
    add companys_path(companys_id), priority: 0.7, changefreq: 'daily', lastmod: companys_id.updated_at
  end
  # 企業ページ を追加する
  # 口コミ詳細ページ を追加する
  Review.find_each do |id|
    add review_path(id), priority: 0.7, changefreq: 'daily'
  end
  # 査定依頼ページ を追加する
  add assessment_requests_path, priority: 0.7, changefreq: 'daily'
end
