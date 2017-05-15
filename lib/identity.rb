# frozen_string_literal: true

module Jekyll
  module Codepen
    # Gem identity information.
    module Identity
      def self.name
        'jekyll-codepen'
      end

      def self.label
        'Jekyll::Codepen'
      end

      def self.version
        '0.1.2'
      end

      def self.version_label
        "#{label} #{version}"
      end
    end
  end
end
