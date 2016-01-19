require 'spec_helper'

describe Lita::Handlers::OnewheelCve, lita_handler: true do
  it { is_expected.to route('  cve-2015-1234  ') }
  it { is_expected.to_not route('  cve-12-12  ') }
  it { is_expected.to_not route('other text with cve within it  ') }

  it 'will return a cve link to the thing' do
    send_message 'oh man cve-2015-1234 is so awesome'
    puts replies.last
    expect(replies.last).to eq('http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=2015-1234')
  end
end
