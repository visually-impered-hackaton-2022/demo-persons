<template>
  <settings />
  </template>

<script lang="ts">
// @ is an alias to /src
import SettingsComponent from "@/components/SettingsComponent.vue";

export default {
  name: "SettingsView",
  components: {
    settings: SettingsComponent,
  },
};
</script>
