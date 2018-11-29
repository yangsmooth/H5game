<template>
  <div class="Laya-h5game p-0 my-0">
  	  <div class="nav nav-tabs bg-info py-1 my-0">
  	  	  <label class="nav text-dark p-0 mx-2"><strong>小游戏:</strong></label>
					<a class="nav text-dark p-0 mx-2">是男人就坚持5秒</a>
					<a class="nav text-dark p-0 mx-2">小蜜蜂简单版</a>
					<!--<router-link class="nav text-dark p-0 mx-2" tag="a" :to="{name:'Other'}" append>小蜜蜂简单版</router-link>-->
			    <app-Time  class="nav ml-auto mr-2"></app-Time>
	    </div>
  </div>
</template>

<script>
// @ is an alias to /src
import Time from '../../components/Time';
export default {
  name: 'Laya-h5game',
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
  	"app-Time":Time
  }
}
</script>


<style scoped>
a{
	cursor: pointer;
}
</style>
