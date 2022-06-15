<template>
  <form
    v-on:submit.prevent
    style="margin-top: 3%"
    @submit.prevent="savePerson(firstName, lastName)"
  >
    <div class="row">
      <div class="input-field col s6">
        <input
          v-model="firstName"
          id="backend_url"
          type="text"
          class="validate"
        />
        <label class="active" for="backend_url">First Name</label>
      </div>
    </div>
    <div class="row">
      <div class="input-field col s6">
        <input v-model="lastName" id="device_id" type="text" />
        <label class="active" for="device_id">Last Name</label>
      </div>
    </div>
    <div class="row">
      <button class="btn waves-effect waves-light" type="submit" name="action">
        Add
      </button>
    </div>
  </form>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import { useToast } from "vue-toastification";

export default defineComponent({
  name: "AddPersonComponent",
  setup() {
    // Get toast interface
    const toast = useToast();

  // These options will override the options defined in the "app.use" plugin registration for this specific toast

    // Make it available inside methods
    return { toast };
  },
  data() {
    return {
      firstName: "",
      lastName: "",
    };
  },

  methods: {
    //...mapMutations(['updateDeviceId']),

    savePerson(firstName: string, lastName: string): void {
      console.log(
        "save person: " + this.firstName + " url: " + this.lastName
      );
      if (this.firstName === undefined || this.firstName === ""){
        this.toast.error("fistName is not set");
        return
      }
     // this.$store.commit("updateDeviceId", devId);
      //this.$store.commit("updateBackendUrl", backendUrl);
       try {
            this.$store.dispatch("addPerson",{firstname: this.firstName,lastname: this.lastName, id:null})
            this.$router.push("/");
      } catch (err) {
         
      }

      // this.$store.backendUrl = this.backendUrl;
      //this.$store.deviceId = this.deviceId;
    },
  },
});
</script>
