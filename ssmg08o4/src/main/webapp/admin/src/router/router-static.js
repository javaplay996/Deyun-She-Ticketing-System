import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import discussyanyuanjianjie from '@/views/modules/discussyanyuanjianjie/list'
    import huiyuan from '@/views/modules/huiyuan/list'
    import changjianwenti from '@/views/modules/changjianwenti/list'
    import storeup from '@/views/modules/storeup/list'
    import users from '@/views/modules/users/list'
    import discusspiaowuxinxi from '@/views/modules/discusspiaowuxinxi/list'
    import chat from '@/views/modules/chat/list'
    import yanyuanjianjie from '@/views/modules/yanyuanjianjie/list'
    import orders from '@/views/modules/orders/list'
    import discusschangjianwenti from '@/views/modules/discusschangjianwenti/list'
    import config from '@/views/modules/config/list'
    import piaowuxinxi from '@/views/modules/piaowuxinxi/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/news',
        name: '公告信息',
        component: news
      }
          ,{
	path: '/discussyanyuanjianjie',
        name: '演员简介评论',
        component: discussyanyuanjianjie
      }
          ,{
	path: '/huiyuan',
        name: '会员',
        component: huiyuan
      }
          ,{
	path: '/changjianwenti',
        name: '常见问题',
        component: changjianwenti
      }
          ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
          ,{
	path: '/users',
        name: '管理员',
        component: users
      }
          ,{
	path: '/discusspiaowuxinxi',
        name: '票务信息评论',
        component: discusspiaowuxinxi
      }
          ,{
	path: '/chat',
        name: '问题反馈',
        component: chat
      }
          ,{
	path: '/yanyuanjianjie',
        name: '演员简介',
        component: yanyuanjianjie
      }
          ,{
        path: '/orders/:status',
        name: '订单管理',
        component: orders
      }
          ,{
	path: '/discusschangjianwenti',
        name: '常见问题评论',
        component: discusschangjianwenti
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
          ,{
	path: '/piaowuxinxi',
        name: '票务信息',
        component: piaowuxinxi
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
