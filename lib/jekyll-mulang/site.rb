module Jekyll
  class Site

    def post_attr_hash(post_attr)
      hash = Hash.new { |h, key| h[key] = [] }
      counter = 0
      posts.docs.each do |p|
        if p.data[post_attr]
          first = p.data[post_attr][0]
          p.data[post_attr].each do |t|
            hash[t] << p
            hash[t + "_" + first] << p
          end
        end
      end
      hash.values.each { |posts| posts.sort!.reverse! }
      hash
    end

    def tags
      post_attr_hash("tags")
    end

    def categories
      post_attr_hash("categories")
    end

  end
end
