<template>
  <header>
    <nav class="navbar navbar-expand-sm navbar-dark bg-primary">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">NavBar</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto">
            <!-- 
						<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="#">Home</a>
						</li>
						<li class="nav-item">
						 <a class="nav-link" href="#">About</a>
						</li> 
				 -->
            <li class="nav-item">
              <RouterLink class="nav-link" active-class="active" to="/"> Home </RouterLink>
            </li>
            <li class="nav-item">
              <RouterLink class="nav-link" active-class="active" to="/about"> About </RouterLink>
            </li>
            <li class="nav-item">
              <RouterLink class="nav-link" active-class="active" to="/members">
                회원 관리
              </RouterLink>
            </li>
            <li class="nav-item">
              <RouterLink class="nav-link" active-class="active" to="/nested"> Nested </RouterLink>
            </li>
          </ul>
          <div class="d-flex">
            <button class="btn btn-outline-light" type="button" @click="goMemberCreatePage">
              회원등록
            </button>
          </div>
        </div>
      </div>
    </nav>
  </header>
</template>

<script setup>
import { useRouter } from 'vue-router'

const router = useRouter()
const goMemberCreatePage = () => {
  router.push({
    name: 'MemberCreate'
  })
}
</script>

<style lang="scss" scoped></style>
