
void printInteger(int anumber){
  print('the number is $anumber');
}

int countLines(){
  var t=10;
  return t;
}
 
void main(){
  //1
  var number=42;
  printInteger(number);
  //2
  int lineCount;
  if(number==42){
    lineCount=countLines();
  }
  else{
    lineCount=0;
  }
  print(lineCount);
  //3
  late String description;
  description='milk way';
  print(description);
  //4
  final name='vincent';
  const bar =10000;
  const double atm=1.33432*bar;
  print(name+'$atm');
  //5
  var one = int.parse('1');
  assert(one==1);

  var onePointOne=double.parse('1.1');
  assert(onePointOne==1.1);

  String oneAsString = 1.toString();
  assert(oneAsString=='1');

  String piAsString=3.14159.toStringAsFixed(2);
  assert(piAsString=='3.14');

  //6
  assert((3<<1)==6);
  assert((3|4)==7);
  assert((3 & 4)==0);
  //7
  var s2="All the monments would be lost in time";
  print(s2);
  var s='string interpolation';
  assert('Dart has $s,which is so handy.'== 'Dart has $s,'
  'which is so handy.');
  //8
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
}
