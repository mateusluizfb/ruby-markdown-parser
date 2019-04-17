module Parser
  def self.parse_markdown(markdown_text)
    if markdown_text[0] == '*'
      list = "<ul>"
      list.concat("<li>#{remove_list_symbol(markdown_text)}</li>")
      list.concat("</ul>")
      return list
    end

    "<p>#{replace_tags(markdown_text)}</p>"
  end

  def self.remove_list_symbol(list_item)
    list_item
      .gsub(/([*][ ]|[*])/, '')
      .sub(/(\\n)/, '')
  end

  def self.replace_tags(markdown_text)
    markdown_text
      .then { |text| text.gsub(/__(.*?)\__/, '<strong>\1</strong>') }
      .then { |text| text.gsub(/_(.*?)\_/, '<em>\1</em>') }
  end
end
