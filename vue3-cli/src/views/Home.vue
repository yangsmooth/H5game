<template>
  <div class="home">
      <div class="row">
				<leftNavbar class="col-sm-2 col-md-2"></leftNavbar>
				<router-view class="col-sm-10 col-md-10"></router-view>
			</div>
  </div>
</template>

<script>
// @ is an alias to /src
import LeftNavbar from '../components/LeftNavbar';
export default {
  name: 'home',
  props:{
  	
  },
  //ES6写法
  data(){
			return {
				
			}
	},
	computed:{
		
	},
	methods:{
		
	},
  components: {
	"leftNavbar": LeftNavbar
  }
}
</script>


<style scoped>

</style>
