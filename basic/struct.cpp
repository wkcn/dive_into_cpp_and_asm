struct MyStruct {
  char a;
  int b;
  char c;
};
int main() {
  MyStruct s1;
  MyStruct s2;
  int c = s1.b + s2.b;
  s1.a = s2.a;
  s1.c = s2.c;
  return 0;
}
