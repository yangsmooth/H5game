<!--HTML结构-->
<template>
	<div id="app">
		<ul>
			<li><router-link to="/">Home</router-link></li>
			<li><router-link to="/About">About</router-link></li>
		</ul>
		<router-view></router-view>
	</div>
</template>

<!--行为处理-->
<script>
	
	export default {
		name: 'app',
		data() {
			return {
			}
		}
	}
</script>

<!--样式-->
<style scoped>

</style>