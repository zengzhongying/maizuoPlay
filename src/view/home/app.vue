<template>
  <div>
    <input type="text" v-model="username">
    <br>
    <input type="number" v-model="age">
    <br>
    <button @click="dosave">保存</button>

    <ul>
      <li v-for="(item,index) in items" :key="index">
        <span>{{item.id}}</span>----
        <span>{{item.Name}}</span>----
        <span>{{item.age}}</span>----
        <span>{{item.sex}}</span>
      </li>
    </ul>
  </div>
</template>

<script>
import Service from "../../../service/index.js";
export default {
  data() {
    return {
      name: "czc",
      username: undefined,
      age: undefined,
      items: []
    };
  },
  mounted() {
    this.fresh();
  },
  methods: {
    dosave() {
      var newobj = {
        name: this.username,
        age: this.age
      };
      console.log(newobj)

      Service.add(newobj)
        .then(res => {
          this.fresh();
          console.log(res);
        })
        .catch(err => {
          console.log("报错啦");
        });
    },
    fresh() {
      Service.getList()
        .then(res => {
          this.items = res;
          this.username = undefined;
          this.age = undefined;
        })
        .catch(err => {
          console.log("报错啦");
        });
    }
  }
};
</script>
