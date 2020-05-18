import Vue from 'vue'
import Buefy from 'buefy'
import 'buefy/dist/buefy.css'
import NewPostHome from '../new_post_form.vue'

Vue.use(Buefy)

document.addEventListener('DOMContentLoaded', () => {
	const app = new Vue({
		render: h =>
		h(NewPostHome),
	}).$mount()
	document.body.appendChild(app.$el)
})
