import TemperatureState from "@/types/TemperatureState";
import { createStore } from "vuex";
import newRequest from "@/api";
import { HTTP_VERBS } from "@/types/Common";
import Person from "@/types/Person";
import { useToast } from "vue-toastification";

const toast = useToast();

/**
 * central state of web app
 */
interface APPRootState {
  version: string;
  backendUrl: string;
  persons : Person[];
  newPerson: Person;
  // error: string;
}

const store = createStore<APPRootState>({
  state: {
    version: "1.0.0", // a simple property
    backendUrl: "http://localhost:8080/persons",
    persons: [],
    newPerson: { id: NaN,firstName:"",lastName: ""
    }
    // error: "",
  },
  mutations: {
    
    updateBackendUrl(state, backendUrl) {
      state.backendUrl = backendUrl;
    },
    updateError(state, err: string) {
      if (err != "") {
        toast.error(err);
      }
    },
  },
  actions: {
    getPersons({ commit }): any {
      store.commit("updateError", "");
      newRequest(
        HTTP_VERBS.GET,
        this.state.backendUrl,
        new Headers({
          "Content-Type": "application/json",
        }),
        {}, //there is no query parameters
        {} //no data for get
      ).catch((error: any) => {
        const err = `Error at sending request !`;
        store.commit("updateError", err);
      });
    },
    addPerson({ commit }): any {
      store.commit("updateError", "");
      store.commit("updateError", "");
      const json = JSON.stringify(this.state.newPerson);
      console.log(json);
      newRequest(
        HTTP_VERBS.POST,
        this.state.backendUrl,
        new Headers({
          "Content-Type": "application/json",
        }),
        {}, //there is no query parameters
        json
      ).catch((error: any) => {
        const err = `Error at sending request !`;
        store.commit("updateError", err);
      });
    },
  }, //end of actions
}); //end of store

export default store;
