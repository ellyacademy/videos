lengthof = function (collection) {
  var counter = 0;

for (const item of collection) {
    console.log(item)
    counter++
  }

  return counter;
}

console.log(lengthof(['B', 'R', 'U', 'C', 'E']))
