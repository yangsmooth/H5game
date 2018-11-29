<!--HTML结构-->
<template>
	<div id="Home">
		<!--绑定本vue数据到子组件上-->
		<header-app v-on:titleChanged="updateTitle($event)" v-bind:title="title"></header-app>
		<users v-bind:users="users"></users>
		<footer-app v-bind:title="title"></footer-app>
	</div>
</template>

<!--行为处理-->
<script>
	//先导入组件,再注册组件
	import Users from '../components/Users'
	import Footer from '../components/Footer'
	import Header from '../components/Header'

	export default {
		name: 'Home',
		data() {
			return {
				title: "这是我第一个脚手架项目",
				users: [
//					{
//						name: "herry",
//						position: "web开发",
//						show: "false"
//					},
//					{
//						name: "mercy",
//						position: "java开发",
//						show: "false"
//					},
//					{
//						name: "hose",
//						position: "python开发",
//						show: "false"
//					},
//					{
//						name: "herry",
//						position: "web开发",
//						show: "false"
//					},
//					{
//						name: "mercy",
//						position: "java开发",
//						show: "false"
//					},
//					{
//						name: "hose",
//						position: "python开发",
//						show: "false"
//					},
//					{
//						name: "herry",
//						position: "web开发",
//						show: "false"
//					},
//					{
//						name: "mercy",
//						position: "java开发",
//						show: "false"
//					},
//					{
//						name: "hose",
//						position: "python开发",
//						show: "false"
//					},
//					{
//						name: "herry",
//						position: "web开发",
//						show: "false"
//					},
//					{
//						name: "mercy",
//						position: "java开发",
//						show: "false"
//					},
//					{
//						name: "hose",
//						position: "python开发",
//						show: "false"
//					}
				]
			}
		},
		methods:{
			updateTitle(title){
				this.title = title;
			}
		},
		components: {
			"users": Users,
			"footer-app": Footer,
			"header-app": Header
		},
		created(){
			this.$http.get("http://jsonplaceholder.typicode.com/users")
		    .then((data)=>{
		    	console.log(data);
		    	this.users = data.body;
		    })
		}
	}
</script>

<!--样式-->
<style scoped>

</style>