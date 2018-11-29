<template>
	<div class="app-Footer">
		<h5>版权所有，违者必究!{{title}}</h5>
	</div>
</template>

<script>
	export default {
		name: 'app-Footer',
		//父集App.vue组件v-bind绑定的数据----传送到子组件的数据
		props: {
			title:{
				type: String,
				required: true
			}
		},
		data() {
			return {

			}
		}
	}
</script>

<style scoped>
	.app-Footer {
		background-color: aqua;
		padding: 1px;
	}
	
	h5 {
		color: black;
		text-align: center;
	}
</style>