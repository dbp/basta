require 'git'

module Jekyll
  class GitActivityTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
      result = ""
      g = Git.open(Dir.getwd)
      index = 0
      g.log.first.sha
    end
  end
end

Liquid::Template.register_tag('githead', Jekyll::GitActivityTag)
