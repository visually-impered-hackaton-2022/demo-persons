<template>
  <footer class="page-footer teal grey darken-3 btmf">
    <div class="container">
      <div class="row">
        <!--
                    <div class="col l6 s12">
                        <h5 class="white-text">Project Description</h5>
                        <p class="grey-text text-lighten-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias ipsum eum enim, cumque porro at aliquam voluptatem commodi quia error, consequatur, beatae ea tempora illum veritatis nostrum expedita nisi quas .</p>
                    </div>
                    <div class="col l3 s12">
                        <h5 class="white-text">Links</h5>
                        <ul>
                            <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                            <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                            <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
                            <li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>
                        </ul>
                    </div>
                    <div class="col l3 s12">
                        <h5 class="white-text">Social</h5>
                        <ul class="social">
                            <li><a class="grey-text text-lighten-3" href="#!"> <i class="icon ion-social-facebook x15"></i> fb_username</a></li>
                            <li><a class="grey-text text-lighten-3" href="#!"> <i class="icon ion-social-twitter x15"></i> tw_handle</a></li>
                            <li><a class="grey-text text-lighten-3" href="#!"> <i class="icon ion-social-instagram x15"></i> instagram</a></li>
                            <li><a class="grey-text text-lighten-3" href="#!"> <i class="icon ion-social-whatsapp x15"></i> (+234)-812-345-6789</a></li>
                        </ul>
                    </div>
                -->
      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">
        © 2022 Nikolaj Majorov Red Hat, Inc.
        <a
          class="grey-text text-lighten-4 right"
          href="https://www.redhat.com/en/technologies/cloud-computing/openshift"
          >Powered by Red Hat OpenShift</a
        >
      </div>
    </div>
  </footer>
</template>

<script lang="ts">
import { defineComponent } from "vue";
export default defineComponent({
  name: "FooterComponent",
  data() {
    return {};
  },
});
</script>

<style scoped>
.btmf {
  position: fixed;
  bottom: 0;
  left: 0;
  width: 100%;
}
</style>
