require 'spec_helper'

describe 'nodejs::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe package('nodejs') do
    it { should be_installed }
  end

  context 'using default attributes' do
    describe command('nodejs --version') do
      its(:stdout) { should start_with 'v4.3' }
    end

    describe command('npm --version') do
      its (:stdout) { should start_with '2.14' }
    end
  end
end
