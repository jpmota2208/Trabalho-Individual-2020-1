import axios from 'axios'

const url =
  process.env.NODE_ENV === 'production'
    ? 'https://trabackend.herokuapp.com/'
    : 'https://localhost:3000'

const base = `${url}/api/v1`
const API = axios.create({
  baseURL: base
})

export default API
