// Reverse

function reverse(str){
  var input = str.split('');
  var revstr = [];
  for(i = 0; i <= input.length; i++){
    revstr.unshift(input[i]);
  };
  return revstr.join('');
};
