#!/usr/bin/env python3
# https://gist.github.com/phrawzty/62540f146ee5e74ea1ab

import http.server as SimpleHTTPServer
import socketserver as SocketServer
import logging

PORT = 5000

class GetHandler(
        SimpleHTTPServer.SimpleHTTPRequestHandler
        ):

    def do_GET(self):
        logging.error(self.headers)
        SimpleHTTPServer.SimpleHTTPRequestHandler.do_GET(self)


Handler = GetHandler
httpd = SocketServer.TCPServer(("", PORT), Handler)

httpd.serve_forever()