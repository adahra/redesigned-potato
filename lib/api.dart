import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class Api {
  Future<Response> _message(Request request) async {
    return Response.ok('[]');
  }

  Router get router {
    final router = Router();

    router.get('/messages', _message);
    router.get('/messages/', _message);
    router.post('/messages/', _message);
    router.put('/messages', _message);
    router.delete('/messages', _message);

    router.all('/<ifnored|.*>', (Request request) {
      return Response.notFound('null');
    });
    
    return router;
  }
}
