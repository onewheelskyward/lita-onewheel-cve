lita-onewheel-cve
----
|buildstatus|
|coveragestatus|

.. |buildstatus| image:: https://travis-ci.org/onewheelskyward/lita-onewheel-cve.svg?branch=master
  :target: https://travis-ci.org/onewheelskyward/lita-onewheel-cve
.. |coveragestatus| image:: https://coveralls.io/repos/github/onewheelskyward/lita-onewheel-cve/badge.svg?branch=master
  :target: https://coveralls.io/github/onewheelskyward/lita-onewheel-cve?branch=master

Puts out links to CVEs when they're posted in chat.

Configuration
----
Optionally, override the default CVE search URL in your Lita configuration:

``config.handlers.onewheel_cve.search_url = 'http://example.com/cve?id='``

Installation
----
Add lita-onewheel-cve to your Lita instance's Gemfile:

``gem 'lita-onewheel-cve'``

Usage
----
When someone mentions 'CVE-1234-1234' it'll post a link to ``http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=1234-1234``.

That's all, folks!
