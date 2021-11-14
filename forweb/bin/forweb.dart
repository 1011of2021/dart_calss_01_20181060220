import 'dart:html';

void main(List<String> arguments) {
  //querySelector()返回指定html代码中的元素作为对象
  //querySelectorAll()返回所有指定元素作为对象
  // Find an element by id (an-id).
  Element idElement = querySelector('#an-id')!;

  // Find an element by class (a-class).
  Element classElement = querySelector('.a-class')!;

  // Find all elements by tag (<div>).
  List<Element> divElements = querySelectorAll('div');

  // Find all text inputs.
  List<Element> textInputElements = querySelectorAll(
    'input[type="text"]',
  );

  // Find all elements with the CSS class 'class'
  // inside of a <p> that is inside an element with
  // the ID 'id'.
  List<Element> specialParagraphElements = querySelectorAll('#id p.class');

  //改变元素属性值
  //<a id="example" href="/another/example">link text</a>
  //var anchor = querySelector('#example') as AnchorElement;
  //anchor.href = 'https://dart.dev';

  //获取元素值
  /*
  <!-- In HTML: -->
  <p>
    <span class="linux">Words for Linux</span>
    <span class="macos">Words for Mac</span>
    <span class="windows">Words for Windows</span>
  </p>
   */
   // In Dart:
  //const osList = ['macos', 'windows', 'linux'];
  //final userOs = determineUserOs();

// For each possible OS...
  //for (final os in osList) {
  // Matches user OS?
  //bool shouldShow = (os == userOs);

  // Find all elements with class=os. For example, if
  // os == 'windows', call querySelectorAll('.windows')
  // to find all elements with the class "windows".
  // Note that '.$os' uses string interpolation.
  //for (final elem in querySelectorAll('.$os')) {
    //elem.hidden = !shouldShow; // Show or hide.
  //}

  //创建元素
  var elem = ParagraphElement();
  elem.text = 'Creating is easy!';
  var elem2 = Element.html(
  '<p>Creating <em>is</em> easy!</p>',
  );
  document.body!.children.add(elem2);

  //增加，替换和移除node
  querySelector('#inputs')!.nodes.add(elem);
  querySelector('#status')!.replaceWith(elem);
  querySelector('#expendable')?.remove();

  //操作css
  //var elem = querySelector('#message')!;
  //elem.classes.add('warning');
  //var message = DivElement();
  //message.id = 'message2';
  //message.text = 'Please subscribe to the Dart mailing list.';
  //var message = DivElement()
  //..id = 'message2'
  //..text = 'Please subscribe to the Dart mailing list.';
  //message.style
  //..fontWeight = 'bold'
  //..fontSize = '3em';

  //处理事件
  //处理按钮点击事件
  // Find a button by ID and add an event handler.
    ///querySelector('#submitInfo')!.onClick.listen((e) {
  // When the button is clicked, it runs this code.
    //submitData();
    //});

    //Using HTTP resources with HttpRequest
    //Getting data from the server
    /*
    Future<void> main() async {
    String pageHtml = await HttpRequest.getString(url);
    // Do something with pageHtml...
    }
    */
    //Use try-catch to specify an error handler
    /*
    try {
      var data = await HttpRequest.getString(jsonUri);
      // Process data...
    } catch (e) {
    // Handle exception...
    }
    */

    //The general flow for using the full API of HttpRequest is as follows:

    //1.Create the HttpRequest object.
    //2.Open the URL with either GET or POST.
    //3.Attach event handlers.
    //4.Send the request.
    /*
    var request = HttpRequest();
    request
    ..open('POST', url)
    ..onLoadEnd.listen((e) => requestComplete(request))
    ..send(encodedData);
     */

    //Sending data to the server
    /* 
    String encodeMap(Map<String, String> data) => data.entries
      .map((e) =>
          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');

    Future<void> main() async {
    const data = {'dart': 'fun', 'angular': 'productive'};

    var request = HttpRequest();
      request
      ..open('POST', url)
      ..setRequestHeader(
      'Content-type',
      'application/x-www-form-urlencoded',
    )
    ..send(encodeMap(data));

    await request.onLoadEnd.first;

    if (request.status == 200) {
      // Successful URL access...
    }
    // ···
  }
  */
  
  
  
  //Sending and receiving real-time data with WebSockets
  //定义
  var ws = WebSocket('ws://echo.websocket.org');
  //发送数据
  ws.send('Hello from Dart!');
  //接受数据
  ws.onMessage.listen((MessageEvent e) {
  print('Received message: ${e.data}');
  });

  //处理websocket事件
  /* 
  void initWebSocket([int retrySeconds = 1]) {
  var reconnectScheduled = false;

  print('Connecting to websocket');

  void scheduleReconnect() {
    if (!reconnectScheduled) {
      Timer(Duration(seconds: retrySeconds),
          () => initWebSocket(retrySeconds * 2));
    }
    reconnectScheduled = true;
  }

  ws.onOpen.listen((e) {
    print('Connected');
    ws.send('Hello from Dart!');
  });

  ws.onClose.listen((e) {
    print('Websocket closed, retrying in $retrySeconds seconds');
    scheduleReconnect();
  });

  ws.onError.listen((e) {
    print('Error connecting to ws');
    scheduleReconnect();
  });

  ws.onMessage.listen((MessageEvent e) {
    print('Received message: ${e.data}');
  });
  }
  */



}
