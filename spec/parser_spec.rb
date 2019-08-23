require 'parser'

RSpec.describe Parser do
  it 'parse a paragraph' do
    markdown_text = 'This is a simple text'
    paragraph = '<p>This is a simple text</p>'
    result = Parser.paragraph(markdown_text)
    expect(result).to eq(paragraph)
  end

  it 'pass italic' do
    text = 'This is a simple text'
    italic = '<em>This is a simple text</em>'
    result = Parser.italic(text)
    expect(result).to eq(italic)
  end

  it 'pass markdown with italic' do
    markdown_text = '_This is a simple text_'
    italic = '<em>This is a simple text</em>'
    result = Parser.parse(markdown_text)
    expect(result).to eq(italic)
  end
end
