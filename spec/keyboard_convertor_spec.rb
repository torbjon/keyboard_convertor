# coding: utf-8
require 'keyboard_convertor'

describe 'KeyboardConveror' do

  it 'should convert from russian to english word [jkjlbkmybr to холодильник' do
    expect('[jkjlbkmybr'.convert_keyboard({ from: 'en', to: 'ru' })).to eq('холодильник')
  end

  it 'should convert word [jkjlbkmybr to холодильник without from/to options' do
    expect('[jkjlbkmybr'.convert_keyboard).to eq('холодильник')
  end

  it 'should convert from russian to english word gthtcnhjqrf1986 to перестройка1986' do
    expect('gthtcnhjqrf1986'.convert_keyboard({ from: 'en', to: 'ru' })).to eq('перестройка1986')
  end

  it 'should convert from russian to english word <ht;ytd Ktjybl Bkmbx to Брежнев Леонид Ильич' do
    expect('<ht;ytd Ktjybl Bkmbx'.convert_keyboard({ from: 'en', to: 'ru' })).to eq('Брежнев Леонид Ильич')
  end

  it 'should convert from russian to english word `krf to ёлка' do
    expect('`krf'.convert_keyboard({ from: 'en', to: 'ru' })).to eq('ёлка')
  end

  it 'should convert from russian to english word |`krf to ёлка' do
    expect('|`krf'.convert_keyboard({ from: 'en', to: 'ru' })).to eq('/ёлка')
  end

  it 'should convert from russian to english word "lefhl to Эдуард' do
    expect('"lefhl'.convert_keyboard({ from: 'en', to: 'ru' })).to eq('Эдуард')
  end

  it 'should convert blank to blank' do
    expect(''.convert_keyboard({ from: 'en', to: 'ru' })).to be_empty
  end

  it 'should convert from english to russian word пщщв ьщктштп to good morning' do
    expect('пщщв ьщктштп'.convert_keyboard({ from: 'ru', to: 'en' })).to eq('good morning')
  end

    it 'should convert blank to blank' do
    expect(''.convert_keyboard({ from: 'ru', to: 'en' })).to be_empty
  end

end
