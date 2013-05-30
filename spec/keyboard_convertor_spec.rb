# coding: utf-8
require 'keyboard_convertor'

describe 'KeyboardConveror' do

  it 'should convert from russian to english word [jkjlbkmybr to холодильник' do
    '[jkjlbkmybr'.convert_keyboard({ from: 'ru', to: 'en' }).should eq('холодильник')
  end

  it 'should convert word [jkjlbkmybr to холодильник without from/to options' do
    '[jkjlbkmybr'.convert_keyboard().should eq('холодильник')
  end

  it 'should convert from russian to english word gthtcnhjqrf1986 to перестройка1986' do
    'gthtcnhjqrf1986'.convert_keyboard({ from: 'ru', to: 'en' }).should eq('перестройка1986')
  end

  it 'should convert from russian to english word <ht;ytd Ktjybl Bkmbx to Брежнев Леонид Ильич' do
    '<ht;ytd Ktjybl Bkmbx'.convert_keyboard({ from: 'ru', to: 'en' }).should eq('Брежнев Леонид Ильич')
  end

  it 'should convert from russian to english word \\krf to ёлка' do
    '\krf'.convert_keyboard({ from: 'ru', to: 'en' }).should eq('ёлка')
  end

  it 'should convert from russian to english word "lefhl to Эдуард' do
    '"lefhl'.convert_keyboard({ from: 'ru', to: 'en' }).should eq('Эдуард')
  end

end