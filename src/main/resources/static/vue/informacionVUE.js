const app = Vue.createApp({
    data() {
        return {
            id: null,
            respuesta: null,
            desarrollo: null,
        };
    },
    methods: {
        reload() {
            setTimeout(function () { location.reload() }, 1000);
        },
        guardar() {
            axios.post("http://localhost:3000/informacion", {
                id: parseInt(this.id, 10),
                respuesta: this.respuesta,
                desarrollo: this.desarrollo,
            });
            alert("Gracias por su respuesta.");
        },
        guardarId(id) {
            this.id = id + 1;
        },
    },
});
