const axios = require('axios').default
const secret = ""

module.exports = {
    validateHuman: (token) => {
        return new Promise(async (resolve) => {
            axios.get(`https://www.google.com/recaptcha/api/siteverify?secret=${secret}&response=${token}`)
                .then((res) => {
                    return resolve(res.data.success)
                })
                .catch(() => {
                    return resolve(false)
                })
        })
    }
}
