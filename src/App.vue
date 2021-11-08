<template>
  <img alt="Vue logo" src="./assets/logo.png" />
  <ul>
    <li v-for="item in users" :key="item['name']">{{item['name']}}</li>
  </ul>
  <div>123</div>
</template>

<script setup lang="ts">
import axios from 'axios'
import { onMounted,ref } from 'vue'

let users = ref([])

onMounted(async ()=>{
  let res:any = await axios.get('http://101.42.137.7:2000/api/users')
  users.value = res.data
})

</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
