<template>
	<b-navbar class="container">
		<template slot="start">
			<b-navbar-item href="/">
				Home
			</b-navbar-item>
		</template>
		<template slot="end">
			<b-navbar-item tag="div">
				<div>
					<a href="" class="button is-primary">
						Post
					</a>
				</div>
			</b-navbar-item>
			<b-navbar-dropdown v-bind:label="username">
				<b-navbar-item tag="div">
					<div>
						<a href="#" v-on:click="logout">
							Logout
						</a>
					</div>
				</b-navbar-item>
			</b-navbar-dropdown>
		</template>
	</b-navbar>
</template>

<script>
import axios from 'axios'
export default {
	name: "Navbar",
	data: function () {
		return {
			username: null
		}
	},
	mounted: function () {
		if (localStorage.getItem("username") === null) {
			axios
				.get('/api/v1/get_user_info')
				.then(response => (this.username = response.data.email))
		} else {
			this.username = localStorage.getItem("username");
		}
	},
	methods: {
			logout: function (e) {
					axios
							.get('/api/v1/logout')
							.then(response => {
									if (response.data.status === 200) {
											window.location.href = '/';
									} else {
											console.log("An error has occurred");						
									}
							})
			},
	}
}
</script>

<style scoped>
</style>
