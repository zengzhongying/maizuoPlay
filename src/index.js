import Vue from 'vue'
import Home from './view/home/app.vue'
new Vue({
    el: '#demo',

    render: function (h) {
        return h(Home)
    }
})