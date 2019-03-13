import Service from '../../service/index'
let storage = window.localStorage;
var myInterval;
const tracker = {
    getAll(){
        return JSON.parse(storage.getItem("mz_errs")||"[]")
    },
    uploadAll(){
        let list = this.getAll();
        console.log("pre upload list",list)
        return Service.addRecords({records:list})
    },
    addOne(data){
        var arr = JSON.parse(storage.getItem("mz_errs")||"[]")
        arr.push(data)
        storage.setItem("mz_errs", JSON.stringify(arr))
    },
    start(){
        clearInterval(myInterval);
        myInterval = setInterval(()=>{
            console.log("上报循环")
            if(this.getAll().length >0){
                this.uploadAll().then(data=>{
                    console.log("上报成功")
                    storage.setItem("mz_errs", "[]")
                }).catch(err=>{
                    console.log(err)
                })
            }
        },30*1000)
    }
}
export default tracker;