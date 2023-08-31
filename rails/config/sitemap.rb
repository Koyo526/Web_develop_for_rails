# frozen_string_literal: true

SitemapGenerator::Sitemap.default_host = 'https://internship-a.sandbox.srv.speee.jp/'
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
  Office.find_each do |office|
    add prefecture_path(office.city.prefecture_id, office.city.id), priority: 0.7, changefreq: 'daily'
    add companys_path(office.id), priority: 0.7, changefreq: 'daily'
  end
  # 企業ページ を追加する
  # 口コミ詳細ページ を追加する
  Review.find_each do |id|
    add review_path(id), priority: 0.7, changefreq: 'daily'
  end
  # 査定依頼ページ を追加する
  add assessment_requests_path, priority: 0.7, changefreq: 'daily'
end
