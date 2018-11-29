<template>
	<div class="css3 p-0 my-0">
		<div class="nav nav-tabs bg-info p-0 my-0">
			<router-link class="nav text-dark p-0 mx-2" tag="a" :to="{name:'Title'}" append>轮播</router-link>
			<router-link class="nav text-dark p-0 mx-2" tag="a" :to="{name:'Other'}" append>其他</router-link>
			<app-Time  class="nav ml-auto mr-2"></app-Time>
	    </div>
	    <router-view></router-view>
	</div>
</template>

<script>
	// @ is an alias to /src
	import Time from '../../components/Time';
	export default {
		name: 'css3',
		props: {

		},
		//ES6д��
		data() {
			return {

			}
		},
		computed: {

		},
		methods: {

		},
		components: {
			"app-Time":Time
		}
	}
</script>

<style scoped></style>