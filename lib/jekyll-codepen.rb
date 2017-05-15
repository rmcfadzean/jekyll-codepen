# frozen_string_literal: true

require 'identity'

module Jekyll
  class CodePen < Liquid::Tag
    def initialize(tag_name, content, tokens)
      super

      @defaults = {
        'class' => 'codepen',
        'embed_version' => 2,
        'height' =>  300,
        'preview' =>  false,
        'theme_id' =>  11_473,
        'default_tab' =>  'result'
      }

      @args = content.split

      @url = @args.first
      @slug = @url.match(%r{codepen.io\/\w*\/pen\/(?<slug>\w*)})[:slug]
      @user = @url.match(%r{codepen.io\/(?<user>\w*)\/})[:user]
    end

    def parse_args(args)
      args[1..-1].map do |arg|
        k, v = arg.split('=')
        { k => v }
      end.flatten.first
    end

    def attr_map(attrs)
      attrs.map do |key, value|
        key = key.to_s.tr('_', '-')
        "data-#{key}=\"#{value}\" "
      end.join('')
    end

    def render(context)
      config = context.registers[:site].config['codepen'] || {}
      attrs = @defaults.merge(config)

      args = parse_args(@args)

      attrs = attrs.merge(args) if args

      class_name = attrs['class']
      attrs.delete('class')

      <<-HTML
        <p #{attr_map(attrs)} data-user="#{@user}" data-slug-hash="#{@slug}" class="#{class_name}">
          See the <a href="#{@url}">pen</a> on <a href="//codepen.io">CodePen</a>.
        </p>
        <script async src="https://production-assets.codepen.io/assets/embed/ei.js"></script>
      HTML
    end
  end
end

Liquid::Template.register_tag('codepen', Jekyll::CodePen)
