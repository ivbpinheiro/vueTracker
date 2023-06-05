<template>
    <header>
        <h1>
            <img src="../assets/logo.png" alt="logo do icmc - usp">
        </h1>
        <button class="button" @click="alterarTema">
            {{textoBotao}}
        </button>
    </header>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
const BarraLateral = defineComponent({
    name: 'BarraLateral',
    emits: ['aoTemaAlterado'],
    data (){
        return {
            modoEscuro: true
        }
    },
    computed: {
        textoBotao() {
            if(this.modoEscuro){
                return 'Desativar modo escuro'
            }
            return 'Ativar modo escuro'
        }
    },
    methods: {
        alterarTema(){
            this.modoEscuro = !this.modoEscuro;
            this.$emit('aoTemaAlterado')
        }
    }
});

export default BarraLateral;
</script>

<style scoped>
.button{
    margin-top: 1.5em;
}

header {
    padding: 1rem;
    background: #0d3b66;
    width: 100%;
    height: 100vh;
    text-align: center;
}

@media only screen and (max-width: 768px) {
    header {
        padding: 2.5rem;
        height: auto;
    }
}

img {
    width: 35%;
    height: auto;
    border-radius: 100%;
}

h1 {
    display: flex;
    align-items: center;
    justify-content: center;
}
</style>