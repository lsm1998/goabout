<script lang="ts" setup>
import {reactive, ref} from 'vue'
import {Greet, Quit} from '../../wailsjs/go/main/App'
import {NButton} from 'naive-ui'
import {NGi} from 'naive-ui'
import {NGrid} from 'naive-ui'
import {NFlex} from 'naive-ui'

const rules = ref(null);

const options = ref(null);

const data = reactive({
  name: "",
  resultText: "Please enter your name below 👇",
  count: 0,
  formModel: {
    cool: '',
    veryCool: ''
  },
})

function greet() {
  Greet(data.name).then(result => {
    data.resultText = result
  })
}

function quit() {
  Quit().then(() => {
  })
}

</script>

<template>
  <main>
    <n-flex justify="center">
      <img class="logo" src="../assets/images/logo-universal.png" alt="logo"/>
    </n-flex>

    <n-flex justify="center">
      <h1>欢迎使用Chat</h1>
    </n-flex>


    <n-flex justify="center">
      <h2>请先注册或登录👇</h2>
    </n-flex>

    <n-form ref="formInstRef" :model="data.formModel" :rules="rules">
      <n-form-item label="Cool" path="cool">
        <n-mention v-model:value="data.formModel.cool" :options="options"/>
      </n-form-item>
      <n-form-item label="Very Cool" path="veryCool">
        <n-mention
            v-model:value="data.formModel.veryCool"
            type="textarea"
            :options="options"
        />
      </n-form-item>
    </n-form>
    <!--    <n-grid x-gap="12" :y-gap="8" :cols="3">-->
    <!--      <n-gi justify="center">-->
    <!--        <n-button @click="quit" type="primary">退出</n-button>-->
    <!--      </n-gi>-->
    <!--      <n-gi>-->
    <!--        <n-button @click="greet" type="primary">注册</n-button>-->
    <!--      </n-gi>-->
    <!--      <n-gi>-->
    <!--        <n-button @click="greet" type="primary">登录</n-button>-->
    <!--      </n-gi>-->
    <!--    </n-grid>-->
  </main>
</template>

<style scoped>

main {
  background-color: #f5f5f5;
}

.logo {
  width: 200px;
  height: 200px;
}

</style>
