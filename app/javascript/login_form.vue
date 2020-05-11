<template>
	<div id="container">
		<b-notification v-if="alert"
			type="is-danger"
			has-icon
			aria-close-label="Close notification"
			role="alert">
			{{ alert }}
		</b-notification>
		<form action="/home/login" method="post" id="login_form">
			<b-field label="Email">
				<b-input name="email" id="email" type="text" maxlength="18">
				</b-input>
			</b-field>
			<br>
			<b-field label="Password">
				<b-input name="password" id="password" type="password">
				</b-input>
			</b-field>
			<br>
			<br>
			<input type="hidden" name="authenticity_token" v-bind:value="csrf" />
			<b-button native-type="submit" class="is-primary">Login</b-button>
		</form>
	</div>
</template>

<script>
const token = document.getElementsByName('csrf-token')[0].content
export default {
	name: "LoginForm",
	props: {
		alert: Boolean
	},
	data: function () {
		return {
			csrf: token,
		}
	}
}
</script>

<style scoped>
form {
	text-align: center;
}
</style>
