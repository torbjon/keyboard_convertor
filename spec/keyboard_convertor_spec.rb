require 'keyboard_convertor'

describe KeyboardConveror do

  before(:all) do
    @kb = KeyboardConveror.new
  end

  it "should convert from russian to english word [jkjlbkmybr to холодильник" do
    @kb.convert({ from: 'ru', to: 'en', text: '[jkjlbkmybr' }).should eq('холодильник')
  end

  it "should convert from russian to english word [jkjlbkmybr to холодильник" do
    @kb.convert({ from: 'ru', to: 'en', text: '[jkjlbkmybr' }).should eq('холодильник')
  end

end