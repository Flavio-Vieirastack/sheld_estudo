import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_hotreload/shelf_hotreload.dart';
void main() async {
  withHotreload(() => createServer());
}

Future<HttpServer> createServer() {
  handler(Request request) => Response.ok('server-started');
  return io.serve(handler, 'localhost', 8080);
}