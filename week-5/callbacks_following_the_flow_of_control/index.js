console.log('hello!')

$.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
   $("#person").html(peopleResponse[0].name);
});

console.log('Question 3')
console.log(1)
var getReturnValue = $.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
  console.log(4)
  console.log("peopleResponse:", peopleResponse)
  console.log(5)
  return peopleResponse;

});
console.log(2)
console.log("getReturnValue:", getReturnValue)
console.log(3)
