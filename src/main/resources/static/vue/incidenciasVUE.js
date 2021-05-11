const app = Vue.createApp({
  data() {
    return {
      nombre: null,
      correo: null,
      comentario: null,
      satisfaccion: 5,

      incidencias: [{
        nombre: 'He encontrado un bug',
      },
      {
        nombre: 'Tengo una sugerencia para la web',
      },
      {
        nombre: 'Un programa no cumple las condidiciones',
      },
      {
        nombre: 'Algo no funciona en la web',
      },
      {
        nombre: 'Tengo una duda sin resolver',
      },
      {
        nombre: 'Quiero recomendar un programa',
      },
      {
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
    irBorrarPrograma() {
      window.location.replace("http://localhost:8080/libreApp/eliminarPrograma");
    },
  },
});
