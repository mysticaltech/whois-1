#--
# Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
# Copyright (c) 2009-2013 Simone Carletti <weppos@weppos.net>
#++


require 'whois/record/parser/base_icann_compliant'


module Whois
  class Record
    class Parser

      # Parser for the whois.udag.net server.
      class WhoisUdagNet < BaseIcannCompliant
      end

    end
  end
end