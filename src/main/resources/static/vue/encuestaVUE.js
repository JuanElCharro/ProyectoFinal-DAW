const app = Vue.createApp({
  data() {
    return {
      nombre: null,
      comentario: null,

      lenguajes: [{
        nombre: 'JavaScript',
      },
      {
        nombre: 'Java',
      },
      {
        nombre: '.NET',
      },
      {
        nombre: 'C++',
      },
      {
        nombre: 'Cobol',
      },
      {
        nombre: 'C#',
      },
      {
        nombre: 'Lenguaje R',
      },
      {
        nombre: 'Python',
      },
      {
        nombre: 'Ruby',
      },
      {
        nombre: 'C',
      },
      {
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
      axios.post("http://81.37.154.73:3000/lenguajes", {
        id: parseInt(this.id, 10),
        nombre: this.nombre,
        comentario: this.comentario,
      });
      alert("Gracias por colaborar en la encuesta.");
    },
  },
});
