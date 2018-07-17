module Jekyll
  class BuildTimeTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      site = context["site"]
      post_hours = site.posts.map do |p|
        hours = p["hours"]
        hours ? hours.to_f : 0.0
      end
      total_hours = post_hours.reduce(:+)
      "#{total_hours}"
    end
  end
end

Liquid::Template.register_tag('build_time', Jekyll::BuildTimeTag)

# {{ site.posts.map(:hours).reduce(:+) }}