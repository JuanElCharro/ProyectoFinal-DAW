const app = Vue.createApp({
    data() {
        return {
            respuestaInfo: null,
            respuestaUtilidad: null,
            desarrollo: null, 
        };
    },
    methods: {
        reload() {
            setTimeout(function () { location.reload() }, 1000);
        },
        guardarFormulario() {
            axios.post("http://81.37.154.73:3000/informacion", {
                respuestaInfo: this.respuestaInfo,
                respuestaUtilidad: this.respuestaUtilidad,
                desarrollo: this.desarrollo,
            });
            alert("Gracias por su respuesta.");
        },
    },
});
