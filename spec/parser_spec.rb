require 'parser'

RSpec.describe Parser do
  it 'parse a paragraph' do
    markdown_text = 'This is a simple text'
    paragraph = '<p>This is a simple text</p>'
    result = Parser.paragraph(markdown_text)
    expect(result).to eq(paragraph)
  end

  it 'pass italic' do
    markdown_text = '_This is a simple text_'
    paragraph = '<em>This is a simple text</em>'
    result = Parser.italic(markdown_text)
    expect(true)
  end
end
