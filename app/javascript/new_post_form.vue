<template>
	<div class="container">
		<form action="/posts" method="post" id="posts_form">
			<b-field label="Title">
				<b-input name="title" id="title" type="text" maxlength="18">
				</b-input>
			</b-field>
			<br>
			<b-field label="Description">
				<b-input name="description" id="description" type="text">
				</b-input>
			</b-field>
			<br>
			<br>
			<input type="hidden" name="authenticity_token" v-bind:value="csrf" />
			<b-button native-type="submit" class="is-primary">Share</b-button>
		</form>

	</div>
</template>

<script>
const token = document.getElementsByName('csrf-token')[0].content
export default {
	name: "NewPostForm",
	data: function () {
		return {
			csrf: token,
		}
	}
}

</script>

<style scoped>
</styled>
