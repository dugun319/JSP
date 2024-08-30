import axios from "axios"

export function getMembers() {
    console.log('getMembers() is started')
    // Risk API -> All information is called
    return axios.get('http://localhost:8388/restApi/v1/members')
}