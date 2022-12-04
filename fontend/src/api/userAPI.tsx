
// import StorageKeys from "../constants/storage-keys";
import {axiosClient} from "./axiosClient";

interface InfoLogin{
    username: string,
    password: string
}

interface Info{
    id: number
    name: string
    image: string
    email: string
    token: string
}

const userApi = {
    // register(data) {
    //     const url = 'register/';
    //     return axiosClient.post(url, data);
    // },
    login(data:InfoLogin) {
        const url = '/login'
        return axiosClient.post(url, data)
    },
    loginToken(token:string) {
        const url = '/login?token='
        return axiosClient.get(url+token)
    },
    async token() {
        const accessToken = localStorage.getItem('token')
        const url = '/login?token=' + accessToken
        await axiosClient.get(url).then(res=>{
            return res.data
        }).catch(err => {return false})
    }
}

export default userApi
