class Parser
  def self.parse(markdown_text)
    if markdown_text.include? "__"
      markdown_text = bold(markdown_text.gsub '__', '')
    elsif markdown_text.include? "_"
      markdown_text = italic(markdown_text.gsub '_', '')
    end
    paragraph(markdown_text)
  end
  def self.paragraph(markdown_text)
    "<p>#{markdown_text}</p>"
  end
  def self.italic(markdown_text)
    "<em>#{markdown_text}</em>"
  end
  def self.bold(markdown_text)
    "<strong>#{markdown_text}</strong>"
  end
end
