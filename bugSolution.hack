```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  // Check for potential overflow before multiplication
  if (x > (2147483647 / 2)) { // Assuming 32-bit integers
    throw new Exception("Integer overflow detected!");
  }
  return foo(x) * 2;
}

function main(): void {
  var x: int = 10;
  var y: int = bar(x);
  echo y; // This will print 22
}
```