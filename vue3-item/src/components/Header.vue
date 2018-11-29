<template>
	<div class="app-Header" @click="changeTitle">
		<h1>This is a heading!{{title}}</h1>
	</div>
</template>

<script>
	export default {
		name: 'app-Header',
		props: {
			title: {
				type: String,
				required: true
			}
		},
		data() {
			return {

			}
		},
		methods:{
			changeTitle:function(){
//				this.title = "changed";
				this.$emit("titleChanged","子向父组件传值");
			}
		}
	}
</script>

<style scoped>
	.app-Header {
		background-color: black;
		padding: 10px;
	}
	
	h1 {
		color: white;
		text-align: center;
	}
</style>