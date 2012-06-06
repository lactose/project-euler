t1 = new Date();
var d={};
var g=0;
function get_ending_number(n, c, o) {
  if(n == 89) { 
    c++;
    if(c == 2) {
      g++;
      d[o]=true;
      return true;
    }
  } else if (n == 1) {
    c++;
    if(c == 2) {
      return false;
    }
  }

  var digits = n.toString().split('');
  var sum=0;
  for(var i=0;i<digits.length;i++) {
    sum += (Number(digits[i]) * Number(digits[i]));
  }

  get_ending_number(Number(sum), c, o);
}

for(var i=2;i<10000000;i++) {
  if(d[i]) {
    g++;
    continue;
  }
  get_ending_number(i, 0, i);
}

t2 = new Date();
ft = (t2-t1)/1000;
ft /= 60;

console.log(g + ' in ' + ft.toString() + 'm');
