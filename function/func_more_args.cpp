int hello(int a, int b, int c, int d, int e, int f) {
  return a + b + c + d + e + f; 
}

int main() {
  int a = 1;
  int b = 2;
  int c = 3;
  int d = 4;
  int e = 5;
  int f = 6;
  int g = hello(a, b, c, d, e, f);
  return 0;
}
