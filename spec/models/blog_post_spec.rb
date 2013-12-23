require 'spec_helper'

describe BlogPost do

  it { should have_valid(:title).when('steve','ben', 'joe') }
  it { should_not have_valid(:title).when('', nil) }

  it { should have_valid(:post).when('this is a journal entry doggy', 'pretty cool huh?') }
  it { should_not have_valid(:post).when('', nil) }

  it { should belong_to(:category) }

end
