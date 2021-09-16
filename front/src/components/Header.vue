<template>
  <div
    id="header-nav-wrapper"
    class="d-flex container-fluid navbar navbar-expand-md bg-dark fixed-top"
  >
    <nav id="header-nav-container" class="container ">
      <button id="btnNav" type="button">
        <svg
          t="1615100905321"
          class="icon"
          viewBox="0 0 1024 1024"
          version="1.1"
          xmlns="http://www.w3.org/2000/svg"
          p-id="2111"
          width="30"
          height="30"
        >
          <path
            d="M992 832h-960C14.933333 832 0 817.066667 0 800S14.933333 768 32 768h960c17.066667 0 32 14.933333 32 32s-14.933333 32-32 32zM992 544h-960C14.933333 544 0 529.066667 0 512s14.933333-32 32-32h960c17.066667 0 32 14.933333 32 32s-14.933333 32-32 32zM992 256h-960C14.933333 256 0 241.066667 0 224S14.933333 192 32 192h960c17.066667 0 32 14.933333 32 32s-14.933333 32-32 32z"
            fill="#d2d2d2"
            p-id="2112"
          ></path>
        </svg>
      </button>

      <!-- Brand Logo -->
      <a class="navbar-brand" href="/">
        <div id="logo-box"></div>
      </a>

      <!-- Navbar links -->
      <div
        id="collapsibleNavbar"
        class="collapse navbar-collapse justify-content-center"
      >
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="/">博客</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{% url 'course:course_index' %}">教程</a>
          </li>
        </ul>
      </div>
    </nav>
  </div>
</template>

<script>
import { reactive } from "@vue/reactivity";

export default {
  name: "Header",
  setup(props, context) {
    
    let user = reactive({
      username: "geekhall",
      is_staff: false
    })

    function toggle_clicked(){
        console.log('emit toggle event')
        console.log(props, context)
    }

    return {
        user,
        toggle_clicked
    }
  }
};
</script>

<style>
</style>