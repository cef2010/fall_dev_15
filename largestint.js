// LargestInt

function largest(arr) {
  var compare = arr[0];
  for(i = 0; i <= arr.length; i++){
    if(arr[i] > compare){
      compare = arr[i];
    };
  };
  console.log(compare);
};
