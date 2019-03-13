import Vue from 'vue'
import VueRouter from 'vue-router'
import A from '../view/home/a.vue'
import B from '../view/home/b.vue'
Vue.use(VueRouter)

const routes = [{
    path: '/',
    name:"AAAAAAAAAAAAA",
    component:A
},{
    path: '/b',
    name:"BBBBBBBBBBBB",
    component:B
}]
const router = new VueRouter({
    routes
})

export default router;