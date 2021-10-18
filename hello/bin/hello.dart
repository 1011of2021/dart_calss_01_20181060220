
import 'dart:html';

void printInteger(int anumber){
  print('the number is $anumber');
}

int countLines(){
  var t=10;
  return t;
}
 class Point {
  double? x; // Declare instance variable x, initially null.
  double? y; // Declare y, initially null.
}

 //参数设置
 String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

 var nobleNames = Map<int, String>();
 
 //箭头函数
  bool isNobel(int atomicNumber) => nobleNames[atomicNumber] != null;

  // A person. The implicit interface contains greet().
class Person {
  // In the interface, but visible only in this library.
  final String _name;

  // Not in the interface, since this is a constructor.
  Person(this._name);

  // In the interface.
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// An implementation of the Person interface.
class Impostor implements Person {
  String get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');

Future<String> lookUpVersion() async => '1.0.0';
void main(){
  //1 变量关键字
  var number=42;
  printInteger(number);
  //2 函数与流程控制语句
  int lineCount;
  if(number==42){
    lineCount=countLines();
  }
  else{
    lineCount=0;
  }
  print(lineCount);
  //3 延迟赋值
  late String description;
  description='milk way';
  print(description);
  //4 常量final与const
  final name='vincent';
  const bar =10000;
  const double atm=1.33432*bar;
  print(name+'$atm');
  //5 内置类型 int double 数串转换
  var one = int.parse('1');
  assert(one==1);

  var onePointOne=double.parse('1.1');
  assert(onePointOne==1.1);

  String oneAsString = 1.toString();
  assert(oneAsString=='1');

  String piAsString=3.14159.toStringAsFixed(2);
  assert(piAsString=='3.14');

  //6 运算符
  assert((3<<1)==6);
  assert((3|4)==7);
  assert((3 & 4)==0);
  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Result is a double
  assert(5 ~/ 2 == 2); // Result is an int除并取整
  assert(5 % 2 == 1); // Remainder

  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');

  int a;
  int b;

  a = 0;
  b = ++a; // Increment a before b gets its value.
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a AFTER b gets its value.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a AFTER b gets its value.
  assert(a != b); // -1 != 0
  
  //7 内置类型 字符串
  var s2="All the monments would be lost in time";
  print(s2);
  var s='string interpolation';
  assert('Dart has $s,which is so handy.'== 'Dart has $s,'
  'which is so handy.');

  
  //8 List
  var transportation=['Car','Boat','Plane'];
  var list=[1,2,3];
  assert(list.length==3);
  assert(list[1]==2);
  var list2=[0,...list];
  assert(list2.length ==4);
  var listOfInts=[1,2,3];
  var listOfString = [
    '#0',
    for (var i in listOfInts) '#$i'
  ];
  assert(listOfString[1]=='#1');
  //9 set
  var halogens={'fluorine','chlorine','bromine','iodine','astatine'};
  var elements = <String>{}; //create empty set
  elements.add('fluorine');
  elements.addAll(halogens);
  assert(elements.length == 5);

  //10 maps
  //使用构造器
  var gifts = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  assert(gifts['first'] == 'partridge');
  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  //11箭头函数
  int t=1;
  nobleNames[1]='A';
  nobleNames[2]='B';
  nobleNames[3]='C';
  if(isNobel(t)) print("$t is nobel");
 
 //12默认可选参数，required表必须关键字
 assert(say('Bob', 'Howdy', 'smoke signal') =='Bob says Howdy with a smoke signal');
 
 //13 匿名函数
  var list3 = ['apples', 'bananas', 'oranges'];
  list3.forEach((item) {
  print('${list3.indexOf(item)}: $item');
  });

  //14 for-in
  var candidates=[1,11,3,5];
  for (var candidate in candidates) {
    print(candidate);
  }

 //实例变量
  var point = Point();
  point.x = 4; // Use the setter method for x.
  assert(point.x == 4); // Use the getter method for x.
  assert(point.y == null); // Values default to null.

 //接口实现
  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));


 //泛型（抽象类）List、set、map


//异步
  Future<void> checkVersion() async {
  var version = await lookUpVersion();
  // Do something with version
  }


}



