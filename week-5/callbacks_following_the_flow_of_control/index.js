console.log('hello!')

$.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
   $("#person").html(peopleResponse[0].name);
});

console.log('Question 4')
console.log(1)
$.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
  console.log(3)
  peopleResponse.forEach(function(person) {
    console.log('4, 5, 6, 7')
    console.log(person.name);
    console.log(8)
  });
  console.log(9)
});
console.log(2)
