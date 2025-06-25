#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals
import os
import sys

sys.path.append(os.curdir)

from config import *

SITEURL = 'http://gokrazy-caddy'

MENUITEMS = (
	('Feed', SITEURL + '/feed'),
	('Photos', SITEURL + '/media/images'),
)
