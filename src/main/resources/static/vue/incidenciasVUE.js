const app = Vue.createApp({
  data() {
    return {
      id: null,
      nombre: null,
      correo: null,
      comentario: null,
      satisfaccion: 5,

      incidencias: [{
        id: 1,
        nombre: 'He encontrado un bug',
      },
      {
        id: 2,
        nombre: 'Tengo una sugerencia para la web',
      },
      {
        id: 3,
        nombre: 'Un programa no cumple las condidiciones',
      },
      {
        id: 4,
        nombre: 'Algo no funciona en la web',
      },
      {
        id: 5,
        nombre: 'Tengo una duda sin resolver',
      },
      {
        id: 6,
        nombre: 'Quiero recomendar un programa',
      },
      {
        id: 7,
        nombre: 'Otro',
      },
      ]
    };
  },
  methods: {
    reload() {
      setTimeout(function () { location.reload() }, 1000);
    },
    guardar() {
      axios.post("http://localhost:3000/incidencias", {
        id: parseInt(this.id, 10),
        nombre: this.nombre,
        correo: this.correo,
        comentario: this.comentario,
        satisfaccion: this.satisfaccion,
      });
      alert("Agradecemos su incidencia, gracias.");
    },
    guardarId(id) {
      this.id = id + 1;
    },
    irAgregarPrograma() {
      window.location.replace("http://localhost:8080/libreApp/crearPrograma");
    },
    irBuscarPrograma() {
      window.location.replace("http://localhost:8080/libreApp/buscarPrograma");
    },
    irBuscarComentario() {
      window.location.replace("http://localhost:8080/libreApp/buscarComentarios");
    },
  },
});
