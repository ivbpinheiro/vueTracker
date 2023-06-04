<template>
    <div class="box">
        <div class="columns">
            <div class="column is-8" role="form" aria-label="Formulário para criação de uma nova tarefa">
                <input type="text" class="input" placeholder="Qual tarefa você deseja iniciar" v-model="descricao">
            </div>
            <div class="column">
               <Temporizador @aoTemporizadorFinalizado="finalizarTarefa" />
            </div>
        </div>
    </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
import Temporizador from './TemporizadorSegundos.vue';
const FormularioRegistroHoras = defineComponent({
    name: 'FormularioRegistroHoras',
    components: {
        Temporizador
    },
    data () {
        return {
            descricao: ''
        }
    },
    methods: {
        finalizarTarefa (tempoEmSegundos: number): void {
            console.log('Tempo da tarefa', tempoEmSegundos)
            console.log('Nome da tarefa', this.descricao)
        }
    }    
})
export default FormularioRegistroHoras
</script>

<style scoped></style>