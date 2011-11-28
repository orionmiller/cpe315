int recursive(int x, int i) {
  if(i == 0)
    return x;
  else
    x += 2;
  i -= 1;
  return recursive(x,i);
