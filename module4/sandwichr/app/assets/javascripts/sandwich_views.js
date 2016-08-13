$(document).on('ready',function(){
	// function updateSandwich(response){
	// 	getSandwich()
	// }

	// function getSandwich() {
	// 	$.ajax({
	// 		type: "GET",
	// 		url: `/sandwiches/${sandwichId}`,
	// 		success:
	// 		error:
	// 	})
	// }

	function addIngredient(response){
		var ingredient = response.ingredient.name
		var newIngredient = `<li> ${ingredient} </li>`

		var sandwichCalories = response.sandwich.total_calories

		$('.ingredient_list').append(newIngredient)
		$('.sandwich_calories').text(sandwichCalories)
		console.log(response)
	}

	$('.ingredient').on('click', function(event){
		event.preventDefault();

		var sandwichId = $(event.currentTarget).data('sandwich-id')
		var ingredientId = $(event.currentTarget).data('ingredient-id')
		var ingredient = { ingredient_id: ingredientId }

		$.ajax({
			type: "POST",
			url: `/api/sandwiches/${sandwichId}/ingredients/add`,
			data: ingredient,
			success: addIngredient,
			error: function(error){
				console.log("Something went wrong")
				console.log(error)	
			}
		})
	})
})

// on success call a function that pushes ingredient to new list
// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
