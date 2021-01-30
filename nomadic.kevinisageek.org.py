#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

# This file is only used if you use `make publish` or
# explicitly specify it as your config file.

import os
import sys
sys.path.append(os.curdir)
from pelicanconf import *
THEME = 'themes/jlelse'
RELATIVE_URLS = False
SITEURL = 'http://nomadic.kevinisageek.org/~kevin'
MENUITEMS = (
	('Feed', SITEURL + '/feed'),
	('Photos', SITEURL + '/media/images')
)
PLUGIN_PATHS = ['plugins']
PLUGINS = ['tipue_search']
SEARCH_SAVE_AS = 'search/index.html'
SEARCH_URL = 'search/'
