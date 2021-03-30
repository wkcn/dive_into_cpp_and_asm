inline int max_inline(int a, int b) {
  return a > b ? a : b;
}

int min(int a, int b) {
  return a < b ? a : b;
}

int main() {
  int a = 1, b = 2;
  int ma = max_inline(a, b);
  int mi = min(a, b);
  return 0;
}
