# coding: utf-8
# frozen_string_literal: true

require_relative "html4"

module Nokogiri
  # Alias for Nokogiri::HTML
  HTML = Nokogiri::HTML

  # :singleton-method: HTML
  # :call-seq: HTML(input, url = nil, encoding = nil, options = XML::ParseOptions::DEFAULT_HTML, &block) → Nokogiri::HTML::Document
  #
  # Parse HTML. Convenience method for Nokogiri::HTML::Document.parse

  # :nodoc:
  define_singleton_method(:HTML, Nokogiri.method(:HTML4))

  # 💡 This module/namespace is an alias for Nokogiri::HTML as of v1.12.0. Before v1.12.0,
  #   Nokogiri::HTML did not exist, and this was the module/namespace for all HTML-related
  #   classes.
  module HTML
    # 💡 This class is an alias for Nokogiri::HTML::Document as of v1.12.0.
    class Document < Nokogiri::XML::Document
    end

    # 💡 This class is an alias for Nokogiri::HTML::DocumentFragment as of v1.12.0.
    class DocumentFragment < Nokogiri::XML::DocumentFragment
    end

    # 💡 This class is an alias for Nokogiri::HTML::Builder as of v1.12.0.
    class Builder < Nokogiri::XML::Builder
    end

    module SAX
      # 💡 This class is an alias for Nokogiri::HTML::SAX::Parser as of v1.12.0.
      class Parser < Nokogiri::XML::SAX::Parser
      end

      # 💡 This class is an alias for Nokogiri::HTML::SAX::ParserContext as of v1.12.0.
      class ParserContext < Nokogiri::XML::SAX::ParserContext
      end

      # 💡 This class is an alias for Nokogiri::HTML::SAX::PushParser as of v1.12.0.
      class PushParser
      end
    end
  end
end
