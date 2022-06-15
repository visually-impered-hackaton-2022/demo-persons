import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";
import Donut from "vue-css-donut-chart";
import "vue-css-donut-chart/dist/vcdonut.css";
import store from "@/store/index";
import Toast from "vue-toastification";
// Import the CSS or use your own!
import "vue-toastification/dist/index.css";


const options = {
    // You can set your default toast options options here
};

const app = createApp(App).use(router).use(Donut).use(store);

app.use(Toast, options);

app.config.performance = true;

app.mount("#app");
