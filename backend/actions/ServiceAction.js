
const Email = require('./SendMail')
const db = require('../db')
const jwt = require('jsonwebtoken')

//Thời gian để xác nhận token mail (phút)
const time_token = 10

module.exports = {
    //Yêu cầu xác nhận có tính thời gian tồn tại
    request: (user_id, user_name) => {
        return new Promise((resolve, reject) => {
            try {
                //Lấy mail của tài khoản
                const sql = "SELECT email FROM account WHERE id = ?"
                db.query(sql, [user_id], (err, res) => {
                    if (err) return reject(err)
                    _email = res[0].email
                    if (_email) {
                        //Tạo và lưu token xác nhận mail vào sql
                        token = jwt.sign({ id_account: user_id, iat: Date.now() }, 'shhhhh')
                        const sql = "INSERT INTO token_email (value) VALUES (?)"
                        db.query(sql, [token], async (err) => {
                            if(err) return reject(err)
                            //Thêm thành công token vào db
                            //Tiến hành gửi mail
                            url = "http://localhost:3000/confirm?token="
                            if (await Email.Sender(_email, url + token, user_name))
                                return resolve(true)
                            else
                                return resolve(false)
                        })
                    }
                    else return resolve(false)
                })
            } catch (error) {
                return reject(error)
            }
        })
    },
    //Xác nhận account qua mail
    confirm: (token_mail) => {
        return new Promise((resolve, reject) => {
            try {
                //Kiểm tra token có tồn tại hay không
                const sql = 'SELECT id FROM token_email WHERE value = ? LIMIT 1'
                db.query(sql, [token_mail], (err, res) => {
                    if (err) return reject(err)
                    res = res[0]

                    if (res) {
                        id = res.id
                        //Kiểm tra thời gian tồn tại của token
                        token_mail = (jwt.decode(token_mail))
                        time = Math.floor((Date.now() - token_mail.iat) / 1000 / 60)
                        //Token đã hết hạn
                        if (time > time_token) return resolve()

                        //Xác nhận account và xóa token
                        const sql = 'UPDATE account SET status = 1 WHERE id = ?'
                        db.query(sql, [token_mail.id_account], (err) => {
                            if (err) return reject(err)
                            //Xóa token
                            const sql = "DELETE FROM token_email WHERE id = ?"
                            db.query(sql, [id], (err) => {
                                if (err) return reject(err)
                                //Xác thực thành công
                                return resolve(token_mail.id_account)
                            })

                        })
                    }
                    else {
                        //Không tồn tại token
                        return resolve()
                    }
                })
            } catch (error) {
                return reject(error)
            }
        })
    },

    del: (req, res) => {

        // const sql = "DELETE FROM reply_comment"
        // db.query(sql, ()=>{
        //     const sql = "DELETE FROM comments"
        //     db.query(sql, ()=>{
        //         const sql = "UPDATE posts SET n_comments = 0"
        //         db.query(sql)
        //     })
        // })
        // return res.status(200).json({ "Confirm": "Success" })
    }
}


