# -*- coding: utf-8 -*-
import dash
import dash_core_components as dcc
import dash_html_components as html

# static data
neighborhoods_in_order = ['Ravenna','Greenlake','Northgate','Alki Beach','University District','Queen Anne','Capitol Hill']
totals = [4744, 4500, 2879, 2352, 2064, 1943, 1623]
dog = [3111, 2845, 1939, 1660, 1360, 1255, 1001]
cat = [1626, 1655, 934, 692, 704, 668, 622]
#pig = [2,0,2,0,0,0,0]
#goat = [5,0,4,0,0,0]

# initialize Dash environment
app = dash.Dash(__name__)

# set up layout
app.layout = html.Div(children=[
    # H1 title on the page
    html.H1(children='Lab 2 Exercise 2'),

    # a div to put a short description
    html.Div(children='''
        This visualization is created from Seattle Pet License Data available at https://data.seattle.gov/Community/Seattle-Pet-Licenses/jguv-t9rb.
        The data were filtered and counted using SQL. The dataset includes information for dog, cat, goat, and pig licenses. However, there are so few goat and pig licenses that they would
        barely appear on the graph, so they are omitted. The interactive visualization will contain more detail on the breakdown of pets per neighborhood.
    '''),

    # append the visualization to the page
    dcc.Graph(
        id='pet-license-graph',
        figure={
            # configure the data
            'data': [
                # set x to be neighborhood, and y to be the counts of pet types. We use bars to represent our data.
                {'x': neighborhoods_in_order, 'y': totals, 'type': 'bar', 'name': 'Total'},
                {'x': neighborhoods_in_order, 'y': dog, 'type': 'bar', 'name': 'Dogs'},
                {'x': neighborhoods_in_order, 'y': cat, 'type': 'bar', 'name': 'Cats'},
                #{'x': neighborhoods_in_order, 'y': pig, 'type': 'bar', 'name': 'Pigs'}, #doesnt show up - too few
               # {'x': neighborhoods_in_order, 'y': goat, 'type': 'bar', 'name': 'Goats'}
            ],
            # configure the layout of the visualization --
            'layout': {
                'title': 'Pet Licenses in Seattle Neighborhoods'
            }
        }
    )
])

if __name__ == '__main__':
    # start the Dash app
    app.run_server(debug=True)



