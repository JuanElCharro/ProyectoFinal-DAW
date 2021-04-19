const app = Vue.createApp({
  data() {
    return {
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
      {
        id: '9',
        nombre: 'Ruby',
      },
      {
        id: '10',
        nombre: 'C',
      },
      {
        id: '11',
        nombre: 'Fortran',
      },

      ]
    };
  },
  methods: {
    reload(){
      setTimeout(function(){ location.reload() }, 1000);
    },
    guardar() {
      axios.post("http://localhost:3000/lenguajes", {
        id: parseInt(this.id, 10),
        nombre: this.nombre,
        comentario: this.comentario,
      });
      alert("Gracias por colaborar en la encuesta.");
    },
    guardarId(id) {
      this.id = id + 1;
    },
  },
});
