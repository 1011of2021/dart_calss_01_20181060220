import 'dart:io';

void main(List<String> arguments) {
  //文件与目录
  //读文件作为文本
  /* 
  Future<void> main() async {
  var config = File('config.txt');

  // Put the whole file in a single string.
  
  var stringContents = await config.readAsString();
  print(
      'The file is ${stringContents.length} characters long.');

  // Put each line of the file into its own string.
  var lines = await config.readAsLines();
  print('The file is ${lines.length} lines long.');
  }
  */

  //读文件作为二进制
  /*
  Future<void> main() async {
  var config = File('config.txt');

  var contents = await config.readAsBytes();
  print('The file is ${contents.length} bytes long.');
  }
   */

  //处理错误
  /*
  Future<void> main() async {
  var config = File('config.txt');
  try {
    var contents = await config.readAsString();
    print(contents);
  } catch (e) {
      print(e);
    }
  }
   */
  
  //流式读文件内容
  /*
  import 'dart:io';
import 'dart:convert';

Future<void> main() async {
  var config = File('config.txt');
  Stream<List<int>> inputStream = config.openRead();

  var lines = utf8.decoder
      .bind(inputStream)
      .transform(const LineSplitter());
  try {
    await for (final line in lines) {
      print('Got ${line.length} characters from stream');
    }
    print('file is now closed');
  } catch (e) {
      print(e);
    }
  }
   */


  //写文件内容
  /*
  var logFile = File('log.txt');
  var sink = logFile.openWrite();
  sink.write('FILE ACCESSED ${DateTime.now()}\n');
  await sink.flush();
  await sink.close();
   */
  //var sink = logFile.openWrite(mode: FileMode.append);

//在目录中陈列文件
/*
  Future<void> main() async {
  var dir = Directory('tmp');

  try {
    var dirList = dir.list();
    await for (final FileSystemEntity f in dirList) {
      if (f is File) {
        print('Found file ${f.path}');
      } else if (f is Directory) {
        print('Found dir ${f.path}');
      }
    }
  } catch (e) {
      print(e.toString());
    }
  }
 */

  //其他文件操作
  //Creating a file or directory: create() in File and Directory
  //Deleting a file or directory: delete() in File and Directory
  //Getting the length of a file: length() in File
  //Getting random access to a file: open() in File



  //htpp 客户端和服务器端
  //http server
  /*
  Future<void> main() async {
  final requests = await HttpServer.bind('localhost', 8888);
  await for (final request in requests) {
    processRequest(request);
  }
}

void processRequest(HttpRequest request) {
  print('Got request for ${request.uri.path}');
  final response = request.response;
  if (request.uri.path == '/dart') {
    response
      ..headers.contentType = ContentType(
        'text',
        'plain',
      )
      ..write('Hello from the server');
  } else {
    response.statusCode = HttpStatus.notFound;
  }
  response.close();
  }
   */

   //http client
   /*
   Future<void> main() async {
  var url = Uri.parse('http://localhost:8888/dart');
  var httpClient = HttpClient();
  var request = await httpClient.getUrl(url);
  var response = await request.close();
  var data = await utf8.decoder.bind(response).toList();
  print('Response ${response.statusCode}: $data');
  httpClient.close();
  }
  */

}
