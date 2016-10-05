module Jekyll
  module Paginate
    class Pagination < Generator

      def generate(site)
        site.pages.dup.each do |page|
          paginate(site, page) if Pager.pagination_enabled?(site.config, page)
        end
      end

      def paginate(site, page)
        all_posts = site.site_payload['site']['posts']
        all_posts = all_posts.reject { |p| p['hidden'] }
        lang = page.url().gsub('/', '')
        lang_posts = []

        if lang.empty?
          lang_posts = all_posts
        elsif
          all_posts.each do |post|
            if post['categories'].include? lang
              lang_posts << post
            end
          end
        end

        pages = Pager.calculate_pages(lang_posts, site.config['paginate'].to_i)

        (1..pages).each do |num_page|
          pager = Pager.new(site, num_page, lang_posts, pages)
          if num_page > 1
            newpage = Page.new(site, site.source, page.dir, page.name)
            newpage.pager = pager
            newpage.dir = Pager.paginate_path(site, num_page)
            site.pages << newpage
          else
            page.pager = pager
          end
        end
      end

      def self.first_page_url(site)
        if page = Pagination.new.template_page(site)
          page.url
        else
          nil
        end
      end

      def template_page(site)
        site.pages.dup.select do |page|
          Pager.pagination_candidate?(site.config, page)
        end.sort do |one, two|
          two.path.size <=> one.path.size
        end.first
      end

    end
  end
end
