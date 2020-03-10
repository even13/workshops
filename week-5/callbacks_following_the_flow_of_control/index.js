console.log('hello!')

$.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
   $("#person").html(peopleResponse[0].name);
});
console.log('Question 1')
console.log(1)

$(document).click(function(clickEvent) {
  console.log(3)
  console.log("The click event:", clickEvent);
  console.log(4)
});

console.log(2)
