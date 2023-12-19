import 'stack.dart';
import 'dart:io';
void main(){
  print('Please Enter String :');
  String s=stdin.readLineSync()!;
 if(Balance(s)){
   print('$s -- Balanced Parentheses');
  }
 else
   print('$s -- Unbalanced Parentheses');
}
bool Balance(String s){
  final mystack=stack<String>();
  for(int i=0;i<s.length;i++){
    String c =s[i];
    if(c=='('){
      mystack.push(c);
    } else if(c ==')'){
       if(mystack.isEmpty){
         return false;
    }
    mystack.pop();
  }}
  return mystack.isEmpty;
}