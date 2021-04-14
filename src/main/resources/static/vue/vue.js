const app = Vue.createApp({
  data() {
    return {
      seleccionado: '',

      id: null,
      nombre: null,
      comentario: null,

      lenguajes: [{
        id: '1',
        nombre: 'JavaScript',
      },
      {
        id: '2',
        nombre: 'Java',
      },
      {
        id: '3',
        nombre: '.NET',
      },
      {
        id: '4',
        nombre: 'C++',
      },
      {
        id: '5',
        nombre: 'Cobol',
      },
      {
        id: '6',
        nombre: 'C#',
      },
      {
        id: '7',
        nombre: 'Lenguaje R',
      },
      {
        id: '8',
        nombre: 'Python',
      },
      ]
    };
  },
  methods: {
    guardar() {
      axios.post("http://localhost:3000/lenguajes", {
        id: parseInt(this.id, 10),
        nombre: this.nombre,
        comentario: this.comentario,
      });
      alert("Gracias por su colaboracion");
    },
    guardarId(id) {
      this.id = id + 1;
    },
  },
});
