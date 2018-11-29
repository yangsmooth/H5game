<template>
	<div id="app">
		<app-Header></app-Header>
		<div class="container-fluid">
			<router-view></router-view>
		</div>
		<app-Footer></app-Footer>
	</div>
</template>

<script>
	import Header from './components/Header';
	import Footer from './components/Footer';
	export default {
		name: 'app',
		data() {
			return {
			}
		},
		components: {
			"app-Header": Header,
			"app-Footer": Footer
		}
	}
</script>

<style scoped>

</style>