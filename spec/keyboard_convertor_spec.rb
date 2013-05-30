require 'keyboard_convertor'

describe KeyboardConveror do

  before(:all) do
    @kb = KeyboardConveror.new
  end

  it "should convert from russian to english word [jkjlbkmybr to холодильник" do
    @kb.convert({ from: 'ru', to: 'en', text: '[jkjlbkmybr' }).should eq('холодильник')
  end

  it "should convert from russian to english word gthtcnhjqrf1986 to перестройка1986" do
    @kb.convert({ from: 'ru', to: 'en', text: 'gthtcnhjqrf1986' }).should eq('перестройка1986')
  end

  it "should convert from russian to english word <ht;ytd Ktjybl Bkmbx to Брежнев Леонид Ильич" do
    @kb.convert({ from: 'ru', to: 'en', text: '<ht;ytd Ktjybl Bkmbx' }).should eq('Брежнев Леонид Ильич')
  end

  it "should convert from russian to english word \\krf to ёлка" do
    @kb.convert({ from: 'ru', to: 'en', text: '\krf' }).should eq('ёлка')
  end

  it "should convert from russian to english word \"lefhl to Эдуард" do
    @kb.convert({ from: 'ru', to: 'en', text: '"lefhl' }).should eq('Эдуард')
  end

end