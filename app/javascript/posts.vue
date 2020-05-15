<template>
	<div>
		<div v-if="loading" v-for="index in 5">
			<section class="section">
				<b-skeleton width="20%"></b-skeleton>
				<b-skeleton width="30%"></b-skeleton>
				<b-skeleton width="40%"></b-skeleton>
			</section>
		</div>

		<ul v-if="posts && posts.length">
			<li v-for="(post, idx) in posts" :key="idx">
				<section>
					<div class="container post_container">
						<p>Title: {{ post.title }}</p>
						<p>Desciption: {{ post.description }}</p>
						<hr v-if="idx + 1 !== posts.length">
					</div>
				</section>
			</li>
		</ul>
	</div>
</template>

<script>
import axios from 'axios';
export default {
	name: "Posts",
	data: function () {
		return {
			loading: true,
			posts: []
		}
	},
	mounted: function () {
		axios
			.get('/posts.json')
			.then(response => {
				this.loading = false;
				this.posts   = response.data;
			})
			.catch(error => console.log(error))
	},
}
</script>

<style scoped>
</style>
