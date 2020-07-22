#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'Kevin Smith'
SITENAME = u'Random Geekage'
SITEURL = 'http://nomadic.local'

PATH = 'content'
STATIC_PATHS = ['media','media/images/*','content','*.jpg','favicon.ico']
PAGE_PATHS = ['pages']

TIMEZONE = 'Europe/London'

DEFAULT_LANG = u'en'
LOAD_CONTENT_CACHE = False
FEED_ALL_ATOM = 'feed/index.xml'
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Pagination
USE_PAGER = False
#PAGINATION_PATTERNS = (
#    (1, '{base_name}/', '{base_name}/index.html'),
#    (2, '{base_name}/{number}/', '{base_name}/{number}/index.html'),
#)

# Plugins
PLUGIN_PATHS = ['plugins']
PLUGINS = ['tipue_search']

DIRECT_TEMPLATES = ('index', 'tags', 'archives', 'search')

# URL Formatting
ARTICLE_URL = '{date:%Y}/{date:%m}/{date:%d}/{slug}/'
ARTICLE_SAVE_AS = '{date:%Y}/{date:%m}/{date:%d}/{slug}/index.html'
PAGE_URL = '{slug}/'
PAGE_SAVE_AS = '{slug}/index.html'
AUTHOR_URL = ''
AUTHOR_SAVE_AS = ''
CATEGORY_URL = ''
CATEGORY_SAVE_AS = ''
TAG_URL = 'tag/{slug}/'
TAG_SAVE_AS = 'tag/{slug}/index.html'
STATIC_SAVE_AS = '{path}'
ARCHIVES_SAVE_AS = 'archives/index.html'
ARCHIVES_URL = 'archives/'
SEARCH_SAVE_AS = 'search/index.html'
SEARCH_URL = 'search/'

SHOW_ARTICLE_AUTHOR = False
SHOW_ARTICLE_CATEGORY = False

DISPLAY_PAGES_ON_MENU = True
DISPLAY_CATEGORIES_ON_MENU = False
DISPLAY_PAGES_ON_SIDEBAR = True
DISPLAY_CATEGORIES_ON_SIDEBAR = False
DISPLAY_TAGS_ON_SIDEBAR = False
HIDE_SIDEBAR = True

THEME = 'themes/pelican-kevinisageek'
IGNORE_FILES = ['.#*','.DS_Store']
DEFAULT_LANG = 'en'
MENUITEMS = (
            ('Feed', '/feed'),
			('Photos', '/media/images')
            )

RELATIVE_URLS = False
DELETE_OUTPUT_DIRECTORY = True
READERS = {'html': None}
