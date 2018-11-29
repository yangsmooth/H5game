<template>
	<div class="LeftNavbar">
		<!--user-->
		<div class="user-info bg-light mb-0">
			<div class="pl-4 clearfix">
				<img class="rounded-circle float-left d-block mr-2 my-2" :src="userImgURL" width="50px" height="50px" alt="头像">
				<h6 class="username float-left d-block pt-4 pl-3" title="name">{{username}}</h6>
			</div>
			<label class="userIntroduce ml-0 pt-0 pb-3 pl-3 pr-1" title="签名"><small>There's a girl but I let her get away</small></label>
		</div>
		<!--菜单-->
		<div class="bg-light p-0" id="accordion">
			<div class="card pl-2">
				<label>Introduction</label>
				<div class="card-heading clearfix" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
					<i class="fa fa-file-text text-info"></i>&nbsp;&nbsp;我的项目
					<span class="badge badge-danger pull-right">{{messageCount[0]}}</span>
				</div>
				<div id="collapseOne" class="collapse" data-parent="#accordion">
					<ul class="navbar-nav card-body p-0 m-auto">
						<li class="collapseOne-one" data-toggle="collapse"><router-link tag="div" :to="{name:'css3'}" append>css特效</router-link></li>
						<li class="collapseOne-two" data-toggle="collapse"><router-link tag="div" :to="{name:'Laya-h5game'}" append>layaH5小游戏</router-link></li>
						<li class="collapseOne-three" data-toggle="collapse"><router-link tag="div" :to="{name:'Wx-Demo'}" append>微信demo</router-link></li>
					</ul>
				</div>
			</div>
			<div class="card pl-2">
				<label>Tradition</label>
				<div class="card-heading clearfix" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
					<i class="fa fa-envelope text-warning"></i>&nbsp;&nbsp;Media
					<span class="badge badge-danger pull-right">{{messageCount[1]}}</span>
				</div>
				<div id="collapseTwo" class="collapse" data-parent="#accordion">
					<ul class="navbar-nav card-body p-0">
						<li class="collapseTwo-one" data-toggle="collapse"><router-link tag="div" :to="{name:'Radio'}" append>radio</router-link></li>
						<li class="collapseTwo-two" data-toggle="collapse"><router-link tag="div" :to="{name:'Video'}" append>video</router-link></li>
					</ul>
				</div>
			</div>
			<div class="card pl-2">
				<label>Point</label>
				<div class="card-heading clearfix" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
					<i class="fa fa-sticky-note text-danger"></i>&nbsp;&nbsp;笔记
					<span class="badge pull-right">{{messageCount[2]}}</span>
				</div>
				<div id="collapseThree" class="collapse" data-parent="#accordion">
					<ul class="navbar-nav card-body p-0">
						<li class="collapseThree-one" data-toggle="collapse"><router-link tag="div" :to="{name:'Experence'}" append>经验</router-link></li>
						<li class="collapseThree-two" data-toggle="collapse"><router-link tag="div" :to="{name:'Summary'}" append>总结</router-link></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import {mapGetters,mapActions} from 'vuex';
	export default {
		name: 'LeftNavbar',
		props: { //父集App.vue组件v-bind绑定的数据----传送到子组件的数据
		},
		data() {
			return {
				'username':this.$store.state.userName,
				'userImgURL': this.$store.state.userImg,
				'messageCount': [1,3,5]
			}
		},
		methods:{
		},
		components: {

		}
	}
</script>

<style scoped>
	div,
	ul,
	li,
	label,
	.card {
		margin: 0px;
		padding: 0px;
		border: 0px;
	}
	
	.LeftNavbar {
		border-right: 1px solid #D3D3D3;
	}
	
	.clearfix:before,
	.clearfix:after {
		display: table;
		line-height: 0;
		content: "";
	}
	
	.clearfix:after {
		clear: both;
	}
	
	#accordion {
		margin-bottom:50%;
	}
	
	.card {
		width: inherit;
	}
	
	label {
		margin-bottom: 2px;
		margin-left: 8px;
	}
	
	.card-heading,
	.card-body li {
		padding-top: 6px;
		text-indent: 18px;
		margin-left: -8px;
		cursor: pointer;
		color: black;
		height: 35px;
		vertical-align: auto;
	}
	
	.card-body li {
		padding-left: 23px;
	}
	
	.card-heading:hover,
	.card-body li:hover {
		border-left: 3px solid darkblue;
		background-color: darkgray;
	}
	
	.badge {
		text-indent: 0px;
		display: block;
		width: 18px;
		height: 18px;
		padding-top: 3px;
		margin-right: 35px;
		/*text-align: center;
	vertical-align: center;*/
		background-color: red;
		color: black;
		border-radius: 50%;
	}
</style>