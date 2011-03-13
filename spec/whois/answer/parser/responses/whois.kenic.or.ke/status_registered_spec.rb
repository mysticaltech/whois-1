# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.kenic.or.ke/status_registered_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.kenic.or.ke.rb'

describe Whois::Answer::Parser::WhoisKenicOrKe, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.kenic.or.ke/status_registered.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#status" do
    it do
      @parser.status.should == :registered
    end
  end
  context "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  context "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  context "#created_on" do
    it do
      @parser.created_on.should be_a(Time)
    end
    it do
      @parser.created_on.should == Time.parse("2003-04-18")
    end
  end
  context "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
    end
    it do
      @parser.updated_on.should == Time.parse("2010-03-22")
    end
  end
  context "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
    end
    it do
      @parser.expires_on.should == Time.parse("2011-01-01")
    end
  end
  context "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
    end
    it do
      @parser.nameservers.should have(4).items
    end
    it do
      @parser.nameservers[0].should be_a(_nameserver)
    end
    it do
      @parser.nameservers[0].name.should == "ns1.google.com"
    end
    it do
      @parser.nameservers[1].should be_a(_nameserver)
    end
    it do
      @parser.nameservers[1].name.should == "ns2.google.com"
    end
    it do
      @parser.nameservers[2].should be_a(_nameserver)
    end
    it do
      @parser.nameservers[2].name.should == "ns3.google.com"
    end
    it do
      @parser.nameservers[3].should be_a(_nameserver)
    end
    it do
      @parser.nameservers[3].name.should == "ns4.google.com"
    end
  end
end
