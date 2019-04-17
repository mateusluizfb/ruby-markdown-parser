# frozen_string_literal: true

require 'parser'

RSpec.describe Parser do
  subject { described_class.parse_markdown(markdown_text) }

  describe 'parse a paragraph' do
    let(:markdown_text) { 'This is a simple text' }

    it do
      paragraph = '<p>This is a simple text</p>'
      is_expected.to eq(paragraph)
    end
  end

  describe 'parse bold' do
    let(:markdown_text) { '__This is a simple text__' }

    it do
      paragraph = '<p><strong>This is a simple text</strong></p>'
      is_expected.to eq(paragraph)
    end
  end

  describe 'parse mixed text' do
    let(:markdown_text) do
      'This text has __bold__ and _italics_ text'
    end

    it do
      expected_text = ''\
        '<p>This text has <strong>bold</strong> and <em>italics</em> text</p>'
      is_expected.to eq(expected_text)
    end
  end

  describe 'parse mixed text' do
    let(:markdown_text) do
      'This text has __bold__ and _italics_ text'
    end

    it do
      expected_text = ''\
        '<p>This text has <strong>bold</strong> and <em>italics</em> text</p>'
      is_expected.to eq(expected_text)
    end
  end

  describe 'parse a md list' do
    describe 'parse a simple list' do
      let(:markdown_text) { '*' }
      it { is_expected.to eq('<ul><li></li></ul>') }
    end

    describe 'parse a simple item' do
      let(:markdown_text) { '* Item 1' }
      it { is_expected.to eq('<ul><li>Item 1</li></ul>') }
    end

    describe 'parse an item with \n' do
      let(:markdown_text) { '* Item 1\n' }
      it { is_expected.to eq('<ul><li>Item 1</li></ul>') }
    end

    describe 'parse more than one item' do
      let(:markdown_text) { '* Item 1\n* Item 2' }
      # it { is_expected.to eq('<ul><li>Item 1</li><li>Item 2</li></ul>') }
    end
  end
end
