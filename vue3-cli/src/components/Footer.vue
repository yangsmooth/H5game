<template>
  <div class="Footer navbar navbar-expand-lg d-block bg-dark p-0">
        <div class="content navbar-nav">
            <label class="nav-link">©&nbsp;1997-2018 XX公司版权所有</label>
            <a href="#" class="nav-link">About NetEase</a> 
            <a href="#" class="nav-link">公司简介</a> 
            <a href="#" class="nav-link">联系方法</a> 
            <a href="#" class="nav-link">招聘信息</a> 
            <a href="#" class="nav-link">客户服务</a> 
            <a href="#" class="nav-link">隐私政策</a> 
            <a href="#" class="nav-link">广告服务</a> 
            <a href="#" class="nav-link">网站地图</a> 
            <a href="#" class="nav-link">意见反馈</a> 
            <a href="#" class="nav-link">不良信息举报</a>
        </div>
  </div>
</template>

<script>
// @ is an alias to /src

export default {
  name: 'Footer',
  props:{
  	
  },
  //ES6д��
  data(){
    return {
				
	}
  },
  computed:{
		
  },
  methods:{
		
  },
  components:{
  	
  }
}
</script>


<style scoped>
.content{
	/*margin: auto 9%;*/
	padding-left:10%;
}
.content a,label{
	color: white;
}
.content a:hover{
	color: #D3D3D3;
}
</style>
