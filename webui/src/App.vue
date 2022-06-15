<template>
  <nav>
    <router-link to="/">Home</router-link> |
    <router-link to="/settings">Settings</router-link> |
    <router-link to="/about">About</router-link>
  </nav>
  <div class="container">
    <router-view />
  </div>

  <app-footer />
</template>

<script lang="ts">
import FooterComponent from "@/components/FooterComponent.vue";

export default {
  name: "App",
  components: {
    "app-footer": FooterComponent,
  },
};
</script>
