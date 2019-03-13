import Vue from 'vue'
import routes from './routes/index'
import Home from './view/home/app.vue'
import tracker from './localstore/errTracker'
console.log(tracker.getAll())
Vue.config.errorHandler = function(err,vm){
    var obj = {
        errmsg:err.message,
        errcontent:err.stack,
        source:vm.$route.name,
        besides:"备注字段",
        happendTime:(new Date()).toLocaleString(),
        component:vm.$vnode.tag
    }
    tracker.addOne(obj)
}
tracker.start();
new Vue({
    el: '#demo',
    router:routes,
    render: function (h) {
        return h(Home)
    }
})