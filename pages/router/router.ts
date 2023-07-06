// // router.js
// import { createRouter, createWebHistory } from 'vue-router'
// import Home from './Home.vue'
// import cont from './cont.vue'


// const routes = [
//   { path: '/', component: Home },
//   { path:'/cont',component:cont},
// ]

// const router = createRouter({
//   history: createWebHistory(),
//   routes
// })

// export default router
import { createRouter, createWebHistory } from 'vue-router'

import Home from "../Home.vue"
import cont from "../cont.vue"

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    { path: '/', component: Home, name: "Home"},
    { path: '/show_data/:data*', component: cont, name: "cont"},
  ]
})

export default router
