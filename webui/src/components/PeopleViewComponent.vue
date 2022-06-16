<template>
<div class="row">
    <div class="col s2">
      Persons List
    </div> 
  </div>
  <div class="row">
    <div class="col s1">
       <router-link to="/add" class="waves-effect waves-light btn">ADD</router-link>
    
    </div> 
  </div>

   <div class="row">
    <div class="col s12">
       <table>
        <thead>
          <tr>
              <th>Id</th>
              <th>Name</th>
              <th>Last Name</th>
          </tr>
        </thead>

        <tbody>
          <tr v-for="person in viewPeople" :key="person.id">
            <td>{{ person.id}}</td>
            <td>{{ person.firstName }}</td>
            <td>{{ person.lastName }}</td>
          </tr>
          
        </tbody>
      </table>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  name: "PeopleViewComponent",
  data() {
    return {
      sections: [{ value: 100, color: "grey" }],
    
     };
  },
  computed: {
    viewPeople() {
      return this.$store.state.persons;
       //this.$store.state.filter(entry => entry.type === 'recordReview')
    },
    
  },
  mounted() {
    this.$store.dispatch("getPersons");
  },

  methods: {
    plusTemperature() {
     
     // this.$store.dispatch("sendRecord");
    },
    minusTemperature() {
      //if (this.temp > 0) {
      //  this.temp -= 1;
      //  this.$store.commit("updateTemperature", this.temp);
       // this.$store.dispatch("sendRecord");
      //}
    },
  },
});
</script>
