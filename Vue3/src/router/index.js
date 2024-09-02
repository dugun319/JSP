import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '@/views/HomeView.vue'
import AboutView from '@/views/AboutView.vue'
import NestedView from '@/views/nested/NestedView.vue'
import NestedHomeView from '@/views/nested/NestedHomeView.vue'
import NestedOneView from '@/views/nested/NestedOneView.vue'
import NestedTwoView from '@/views/nested/NestedTwoView.vue'
import MemberListView from '@/views/members/MemberListView.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: HomeView
  },

  {
    path: '/about',
    name: 'About',
    component: AboutView
  },

  {
    path: '/members',
    name: 'MemberList',
    component: MemberListView
  },

  {
    path: '/nested',
    name: 'Nested',
    component: NestedView,
    children: [
      {
        path: 'home',
        name: 'NestedHome',
        component: NestedHomeView
      },

      {
        path: 'one',
        name: 'NestedOne',
        component: NestedOneView
      },

      {
        path: 'two',
        name: 'NestedTwo',
        component: NestedTwoView
      },

    ]
  }
]

const router = createRouter({
  history: createWebHistory('/'),
  routes: routes
})

export default router
