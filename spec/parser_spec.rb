require 'parser'

RSpec.describe Parser do
  it 'parse a paragraph' do
    markdown_text = 'This is a simple text'
    paragraph = '<p>This is a simple text</p>'
    result = Parser.paragraph(markdown_text)
    expect(result).to eq(paragraph)
  end

  it 'pass italic' do
    expect(true)
  end
end
