class MyClass {
public:
  int a, b;
  MyClass(int ia, int ib) : a(ia) {
    b = ib;
    c_ = a + b;
  } 
  void update(int d) {
    a += d;
  }
private:
  int c_;
};

int main() {
  MyClass cls1(1, 2);
  cls1.update(3);
  return 0;
}
