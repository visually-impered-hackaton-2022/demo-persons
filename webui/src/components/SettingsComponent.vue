<template>
  <form
    v-on:submit.prevent
    style="margin-top: 3%"
    @submit.prevent="updateSettings(backendUrl)"
  >
    <div class="row">
      <div class="input-field col s6">
        <input
          v-model="backendUrl"
          id="backend_url"
          type="text"
          class="validate"
        />
        <label class="active" for="backend_url">Backend URL</label>
      </div>
    </div>
    <div class="row">
      <button class="btn waves-effect waves-light" type="submit" name="action">
        Update
      </button>
    </div>
  </form>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import { useToast } from "vue-toastification";

export default defineComponent({
  name: "SettingsComponent",
  setup() {
    // Get toast interface
    const toast = useToast();

  // These options will override the options defined in the "app.use" plugin registration for this specific toast

    // Make it available inside methods
    return { toast };
  },
  data() {
    return {
      backendUrl: this.$store.state.backendUrl,
    };
  },

  methods: {
    //...mapMutations(['updateDeviceId']),

    updateSettings(backendUrl: string): void {
      console.log(
        "update settings called deviceId: " + " url: " + backendUrl
      );
 
      this.$store.commit("updateBackendUrl", backendUrl);

      this.toast.success("settings updated successfully !");

      // this.$store.backendUrl = this.backendUrl;
      //this.$store.deviceId = this.deviceId;
    },
  },
});
</script>
