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

  context 'parse bold' do
    let(:markdown_text) { '__This is a simple text__' }

    it do
      paragraph = '<p><strong>This is a simple text</strong></p>'
      is_expected.to eq(paragraph)
    end
  end
end
