# frozen_string_literal: true

module Loofah
  module HTML4 # :nodoc:
    #
    #  Subclass of ::DocumentFragment.
    #
    #  See Loofah::ScrubBehavior and Loofah::TextBehavior for additional methods.
    #
    class DocumentFragment < ::DocumentFragment
      include Loofah::TextBehavior
      include Loofah::HtmlFragmentBehavior
    end
  end
end
