# -*- coding: utf-8 -*-
import dash
import dash_core_components as dcc
import dash_html_components as html
import uszipcode
from uszipcode import SearchEngine
search = SearchEngine(simple_zipcode=True) # set simple_zipcode=False to use rich info database
zipcode = search.by_zipcode("98105")
print(zipcode)
# Exercise 3
# Create a visualization with interactivity. Similar to Exercise 2,
# you can decide what you want to use as data and
# chart type.
