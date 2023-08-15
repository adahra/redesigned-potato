import 'package:cli_server/service.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

void main(List<String> arguments) async {
  final service = Service();
  final server = await shelf_io.serve(service.handler, 'localhost', 8008);

  server.autoCompress = true;

  print('Serving at http://${server.address.host}:${server.port}');
}
