require 'part1'

describe '#palindrome?' do
  it "passes example test case 1" do
    palindrome?("A man, a plan, a canal -- Panama").should be_true
  end

  it "passes example test case 2" do
    palindrome?("Madam, I'm Adam!").should be_true
  end

  it "passes example test case 3" do
    palindrome?("Abracadabra").should be_false
  end
end

describe '#count_words' do
  it "passes example test case 1" do
    count_words("A man, a plan, a canal -- Panama").should eq(
      'a' =&gt; 3,
      'man' =&gt; 1,
      'canal' =&gt; 1,
      'panama' =&gt; 1,
      'plan' =&gt; 1
    )
  end

  it "passes example test case 2" do
    count_words("Doo bee doo bee doo").should eq(
      'doo' =&gt; 3,
      'bee' =&gt; 2
    )
  end
end

