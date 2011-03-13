# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.kr/property_nameservers_with_ip_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.kr.rb'

describe Whois::Answer::Parser::WhoisKr, "property_nameservers_with_ip.expected" do

  before(:each) do
    file = fixture("responses", "whois.kr/property_nameservers_with_ip.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
    end
    it do
      @parser.nameservers.should have(2).items
    end
    it do
      @parser.nameservers[0].should be_a(_nameserver)
    end
    it do
      @parser.nameservers[0].name.should == "prmns.lg.co.kr"
    end
    it do
      @parser.nameservers[0].ipv4.should == "165.243.5.15"
    end
    it do
      @parser.nameservers[1].should be_a(_nameserver)
    end
    it do
      @parser.nameservers[1].name.should == "secns.lg.co.kr"
    end
    it do
      @parser.nameservers[1].ipv4.should == "203.247.133.133"
    end
  end
end
