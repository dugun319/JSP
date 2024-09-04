import axios from 'axios'

export function getMembers() {
  console.log('getMembers() is started')
  // Risk API -> All information is called
  return axios.get('http://localhost:8388/restApi/v1/members')
}

//
export function createMember(data) {
  console.log('createMember(data) is started')
  return axios.post('http://localhost:8388/restApi/v2/memberSave', data)
}

export function getMemberById(id) {
  console.log('getMemberById typeof id -> ', typeof id)
  console.log('getMemberById id -> ', id)
  return axios.get('http://localhost:8388/restApi/v15/members/' + id)
}
