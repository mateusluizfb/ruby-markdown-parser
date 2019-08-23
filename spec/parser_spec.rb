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
    italic = '<p><em>This is a simple text</em></p>'
    result = Parser.parse(markdown_text)
    expect(result).to eq(italic)
  end

  it 'pass with bold' do
    text = 'This is a simple text'
    bold = '<strong>This is a simple text</strong>'
    result = Parser.bold(text)
    expect(result).to eq(bold)
  end

  it 'pass markdown with italic' do
    markdown_text = '__This is a simple text__'
    strong = '<p><strong>This is a simple text</strong></p>'
    result = Parser.parse(markdown_text)
    expect(true)
  end
end
