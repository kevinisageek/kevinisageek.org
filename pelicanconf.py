#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'Kevin Isageek'
SITENAME = u'Random Geekage'
SITEURL = 'http://nomadic:8000'

PATH = 'content'
STATIC_PATHS = ['misc','images','content']

TIMEZONE = 'Europe/London'

DEFAULT_LANG = u'en'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
#LINKS = (('Pelican', 'http://getpelican.com/'),
#         ('Python.org', 'http://python.org/'),
#         ('Jinja2', 'http://jinja.pocoo.org/'),
#         ('You can modify those links in your config file', '#'),)

# Social widget
SOCIAL = (('Twitter', 'https://twitter.com/kevinisageek'),
          ('Github', 'https://github.com/kevinisageek'),
	  ('Flickr', 'https://flickr.com/photos/kevinisageek'),
	  ('Instagram', 'https://instagram.com/kevinisageek_'),
          ('RSS', '/feed/'),
)

# Pagination
DEFAULT_PAGINATION = 10

#PAGINATION_PATTERNS = (
    #(1, '{base_name}/', '{base_name}/index.html'),
    #(2, '{base_name}/page/{number}/', '{base_name}/page/{number}/index.html'),
    #)


# Uncomment following line if you want document-relative URLs when developing
#RELATIVE_URLS = True

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

DISPLAY_PAGES_ON_MENU = True
DISPLAY_CATEGORIES_ON_MENU = False
DISPLAY_PAGES_ON_SIDEBAR = True
DISPLAY_CATEGORIES_ON_SIDEBAR = False
DISPLAY_TAGS_ON_SIDEBAR = False
HIDE_SIDEBAR = False

#PAGE_PATHS = ['pages']

THEME = "themes/pelican-bootstrap3"
