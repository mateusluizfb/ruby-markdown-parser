# frozen_string_literal: true

require 'parser'

RSpec.describe Parser do
  subject { described_class.parse_markdown(markdown_text) }

  context 'parse a paragraph' do
    let(:markdown_text) { 'This is a simple text' }

    it do
      paragraph = '<p>This is a simple text</p>'
      is_expected.to eq(paragraph)
    end
  end

  context 'parse italics' do
    let(:markdown_text) { '_This is a simple text_' }

    it do
      paragraph = '<p><em>This is a simple text</em></p>'
      is_expected.to eq(paragraph)
    end
  end
end
