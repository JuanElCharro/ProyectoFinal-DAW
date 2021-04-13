const app = Vue.createApp({
  data() {
    return {
      seleccionado: '',
      lenguajes: []
    };
  },
  mounted() {
      axios
      .get('http://localhost:3000/lenguajes')
      .then(response => (this.lenguajes = response))
  },
});
