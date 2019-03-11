import axios from 'axios'
var api = axios.create({
    headers: {
        'Content-Type': 'application/json',
    },
    timeout: 1000 * 60 * 5,
    transformResponse: [(data) => {
        if (data) {
            try {
                data = JSON.parse(data);
            } catch (e) {
                alert('服务器异常,请重试!');
            }
        }
        return data;
    }],
});
export default api;