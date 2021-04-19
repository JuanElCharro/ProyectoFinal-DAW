const app = Vue.createApp({
    data() {
      return {
        id: null,
        nombre: null,
        correo: null,
        comentario: null,
  
        incidencias: [{
          id: 1,
          nombre: 'Bug en la Web',
        },
        {
          id: 2,
          nombre: 'Sugerencia o peticion',
        },
        {
          id: 3,
          nombre: 'Informacion sobre un programa',
        },
        {
          id: 4,
          nombre: 'Otro',
        },
        ]
      };
    },
    methods: {
      reload(){
        setTimeout(function(){ location.reload() }, 1000);
      },
      guardar() {
        axios.post("http://localhost:3000/incidencias", {
          id: parseInt(this.id, 10),
          nombre: this.nombre,
          correo: this.correo,
          comentario: this.comentario,
        });
        alert("Agradecemos su incidencia, gracias.");
      },
      guardarId(id) {
        this.id = id + 1;
      },
    },
  });
  