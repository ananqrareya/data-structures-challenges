import 'stack.dart';
void main(){
List<String>l=['anan','enad','ahmad'];
print(l);
reverse(l);
}
void reverse(List l){
  final mystack=stack<String>();
  for(int i=0;i<l.length;i++)
     mystack.push(l[i]);
  print(mystack);
}
