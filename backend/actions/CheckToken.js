const db = require('../db')
const jwt = require('jsonwebtoken')
const time_token = 6000
// console.log('test')
// //Thêm token khi có người dùng đăng nhập, tránh trường hợp gọi db nhiều lần
// function addToken()
module.exports = {
    checkToken: (_token) => {
        return new Promise((resolve) => {

            token_decode = jwt.decode(_token)
            //Nếu truyền vào token không hợp lệ
            try {
                iat = token_decode.iat
                
                data = token_decode.data
            } catch (error) {
                //Trả về token không hợp lệ
                // if(data)
                return resolve(false)
            }

            const sql = 'SELECT * FROM token WHERE value = ? LIMIT 1'
            db.query(sql, [_token], (err, reponse) => {
                if (err) throw err
                reponse = reponse[0]
                // console.log('a', reponse)
                if (reponse === undefined) resolve(false)

                //Tồn tại token hết thời gian tồn tại tính theo phút 
                time = Math.floor((Date.now() - iat) / 1000 / 60)
                //Token hết hạn sử dụng
                if (time > time_token) resolve(true)
                //Token đúng thì trả về token
                
                else resolve({
                    'data' : token_decode.data
                })
            })

        })
    }
}
