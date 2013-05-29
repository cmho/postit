$ ->
	$('.upvote').click (event) ->
		event.preventDefault
		postID = $(this).parents('.post-item').attr 'data-id'
		$.ajax
			type: "POST"
			url: "/posts/"+postID+"/up"
		return false

	$('.downvote').click (event) ->
		event.preventDefault
		postID = $(this).parents('.post-item').attr 'data-id'
		$.ajax
			type: "POST"
			url: "/posts/"+postID+"/down"
		return false
