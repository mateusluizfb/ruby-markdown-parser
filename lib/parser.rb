class Parser
  def self.parse(markdown_text)
    if markdown_text.include? "_"
      italic(markdown_text.gsub! '_', '')
    else
      paragraph(markdown_text)
    end
  end
  def self.paragraph(markdown_text)
    "<p>#{markdown_text}</p>"
  end
  def self.italic(markdown_text)
    "<em>#{markdown_text}</em>"
  end
end
