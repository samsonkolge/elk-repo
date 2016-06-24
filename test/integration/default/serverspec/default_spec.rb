require 'spec_helper'

describe 'elk-repo::default' do

# Install java
  describe apt('ppa:webupd8team/java') do
    it { should exist }
    it { should be_enabled }
  end

end
