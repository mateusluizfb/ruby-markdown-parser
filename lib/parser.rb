# frozen_string_literal: true

module Parser
  def self.parse_markdown(markdown_text)
    "<p>#{replace_tags(markdown_text)}</p>"
  end

  def self.replace_tags(markdown_text)
    markdown_text
      .then { |text| text.gsub(/__(.*?)\__/, '<strong>\1</strong>') }
      .then { |text| text.gsub(/_(.*?)\_/, '<em>\1</em>') }
  end
end
