<template>
	<b-navbar>
		<template slot="start">
			<b-navbar-item href="#">
				Home
			</b-navbar-item>
		</template>
		<template slot="end">
			<b-navbar-item tag="div">
				<div class="buttons">
					<a class="button is-primary">
						<strong>{{ username }}</strong>
					</a>
				</div>
			</b-navbar-item>
		</template>
	</b-navbar>
</template>

<script>
export default {
	name: "navbar",
	props: {
		username
	}
}
</script>

<style scoped>
</style>
