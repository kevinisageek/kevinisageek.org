#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'Kevin Smith'
SITENAME = u'Random Geekage'
SITEURL = 'https://kevinisageek.org'
PATH = 'content'
STATIC_PATHS = ['media','favicon.ico', '.well-known']
PAGE_PATHS = ['pages']
TIMEZONE = 'Europe/London'
DEFAULT_LANG = u'en'
USE_FOLDER_AS_CATEGORY = False
LOAD_CONTENT_CACHE = False
FEED_ALL_ATOM = 'feed/index.xml'
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None
AUTHOR_SAVE_AS = ''
AUTHOR_URL = ''
PLUGIN_PATHS = ['plugins']
PLUGINS = ['tipue_search']
DIRECT_TEMPLATES = ('index', 'tags', 'archives', 'search')
ARTICLE_URL = '{date:%Y}/{date:%m}/{date:%d}/{slug}/'
ARTICLE_SAVE_AS = '{date:%Y}/{date:%m}/{date:%d}/{slug}/index.html'
ARCHIVES_URL = 'archives/'
ARCHIVES_SAVE_AS = 'archives/index.html'
PAGE_URL = '{slug}/'
PAGE_SAVE_AS = '{slug}/index.html'
TAG_URL = 'tag/{slug}/'
TAG_SAVE_AS = 'tag/{slug}/index.html'
TAGS_URL = 'tags/'
TAGS_SAVE_AS = 'tags/index.html'
STATIC_SAVE_AS = '{path}'
SEARCH_SAVE_AS = 'search/index.html'
SEARCH_URL = 'search/'
DISPLAY_PAGES_ON_MENU = True
HIDE_SIDEBAR = True
THEME = 'themes/jlelse'
IGNORE_FILES = ['.#*','.DS_Store']
DEFAULT_LANG = 'en'
MENUITEMS = (
	('Feed', SITEURL + '/feed'),
	('Photos', SITEURL + '/media/images'),
)
RELLINKS = (
	('https://social.kevinisageek.org/@kevinisageek'),
	('https://twitter.com/kevinisageek')
)
RELATIVE_URLS = False
DELETE_OUTPUT_DIRECTORY = True
READERS = {'html': None}
