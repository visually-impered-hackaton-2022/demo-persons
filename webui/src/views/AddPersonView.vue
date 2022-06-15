<template>
  <add-person />
</template>


<script lang="ts">
import AddPersonComponent from "@/components/AddPersonComponent.vue";

export default {
  name: "AddPersonView",
  components: {
    "add-person": AddPersonComponent,
  },
};
</script>
