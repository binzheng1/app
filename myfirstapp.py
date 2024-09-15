# -*- coding: utf-8 -*-
"""myfirstapp.py"""

from dash import Dash, html

# Create the Dash app
app = Dash(__name__)

# Define the layout of the app
app.layout = html.Div("Hello, Railway!")

# Expose the Flask server
server = app.server

if __name__ == "__main__":
    app.run_server(host="0.0.0.0", port=8050)
