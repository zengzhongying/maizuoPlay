import api from "../axios/index.js";

const Service = {
    getList() {
        return api.get(`/api/mysql`).then(
            res => res.data
        ).catch(err => {
            alert("请求接口数据源报错")
        })
    },
    add(data) {
        return api.post(`/api/create`,data).then(
            res => res.data
        ).catch(err => {
            alert("请求接口数据源报错")
        })
    },
    addRecords(data){
        return api.post(`/api/addRecord`,data).then(
            res => res.data
        ).catch(err => {
            alert("请求接口数据源报错")
        })
    }
}
export default Service