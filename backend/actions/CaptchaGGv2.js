const axios = require('axios').default
const secret = "6LesxociAAAAAGtb0N1h_3hT_XLSKrxW_8T6hKsE"

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