##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Falcon-Web-Server" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-05-31
version "0.1"
description "Falcon Web Server - Homepage: http://www.blueface.com/"

# ShodanHQ results as at 2011-05-31 #
# 28 for Falcon Web Server

# Examples #
examples %w|
207.174.226.3
64.111.60.49
24.199.131.57
194.204.57.89
66.15.89.245
|

# Passive #
def passive
	m=[]

	# Version Detection # HTTP Server Header
	if @meta["server"] =~ /^Falcon Web Server$/
		m << { :name=>"HTTP Server Header" }
	end

	# Return passive matches
	m
end

end

