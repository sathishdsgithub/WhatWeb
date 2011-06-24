##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Isolsoft-Support-Center" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-06-25
version "0.1"
description "Support Center is a fully automated Help Desk solution. - Homepage: http://www.isolsoft.com/"

# 115 for "Powered by: Support Center"
#  53 for "Powered by: Support Center" inurl:kb.php

# Dorks #
dorks [
'"Powered by: Support Center"'
]

# Examples #
examples %w|
www.isolsoft.com/demo/
support.life-host.net
www.breakwatertech.com/support/kb.php?id=0&viewall=1
secure.wbemsolutions.com/helpdesk/support/kb.php?artid=35
www.getcis.com/support/kb.php
support.morandan.com/kb.php?artid=9
www.link-directory-software.com/support/kb.php?artid=7
support.taifgedu.gov.sa/kb.php?lang=en
https://www.asialivesupport.net/kb.php
support.profhost.biz/login.php?lang=nl
support.niv.nl
|

# Matches #
matches [

# javascript warning
{ :text=>'<strong><font color="#FF0000">Warning! This heldesk requires a browser with javascript ' },

# HTML Comment
{ :text=>'<!-- Copyright Line: Unauthorized removal can void license -->' },

# Version Detection # Powered by text
{ :version=>/<p align="center"><font size="1">Powered by: Support Center v([^<^\s]+)<br>/ },

]

end

