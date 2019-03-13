<template>
    <div>
       <p @click="doError">son</p> 
    </div>
</template>
<script>
export default {
    methods: {
    doError(){
      var list = [];
      console.log(list[0].name);
    }}
}
</script>