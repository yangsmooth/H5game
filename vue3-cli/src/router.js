import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
//base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home,
      children:[
		      {path: '/css3',name: 'css3',component: () => import('./views/Myitem/css3.vue'),
		            children:[
		            {path: '/Title',name: 'Title',component: () => import('./views/Myitem/CSS3-Item/Title.vue')},
		            {path: '/Other',name: 'Other',component: () => import('./views/Myitem/CSS3-Item/Other.vue')},
		            {path: '*',redirect:"Title"}
		            ]
		      },
		      {path: '/Laya-h5game',name: 'Laya-h5game',component: () => import('./views/Myitem/Laya-h5game.vue')},
		      {path: '/Wx-Demo',name: 'Wx-Demo',component: () => import('./views/Myitem/Wx-Demo.vue')},
		      {path: '/Radio',name: 'Radio',component: () => import('./views/Media/Radio.vue')},
		      {path: '/Video',name: 'Video',component: () => import('./views/Media/Video.vue')},
		      {path: '/Experence',name: 'Experence',component: () => import('./views/Note/Experence.vue')},
		      {path: '/Summary',name: 'Summary',component: () => import('./views/Note/Summary.vue')},
		      {path: '*',redirect:"css3" }
      ]
    },
    {
      path: '/Email',
      name: 'Email',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/Email.vue')
    },
    {
      path: '/Warn',
      name: 'Warn',
      component: () => import(/* webpackChunkName: "about" */ './views/Warn.vue')
    },
    {
      path: '/OnlineChat',
      name: 'OnlineChat',
      component: () => import(/* webpackChunkName: "about" */ './views/OnlineChat.vue')
    },
    {
    	path: '*',
    	redirect:"/"
    }
  ]
})
