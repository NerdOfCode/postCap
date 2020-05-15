<template>
	<div class="container">
		<Navbar></Navbar>
		<Posts></Posts>
	</div>
</template>

<script>
import Nav   from './navbar'
import Posts from './posts'

export default {
	name: "Home",
	components: {
		'Navbar' : Nav,
		'Posts'  : Posts
	}
}
</script>

<style scoped>
</style>
