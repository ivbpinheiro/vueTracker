<template>
  <main class="columns is-gapless is-multiline" :class="{'modo-escuro': modoEscuro}">
    <div class="column is-one-quarter">
      <BarraLateral @aoTemaAlterado="trocarTema"/>
    </div>
    <div class="column is-three-quarter conteudo">
      <Formulario @aoSalvarTarefa="salvarTarefa"/>
      <div class="lista">
        <Tarefa v-for="(tarefa, index) in tarefas" :key="index" :tarefa="tarefa"/>
        <Box v-if="listaVazia">
          Nada ainda produzido.
        </Box>
      </div>
    </div>
  </main>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
import BarraLateral from './components/BarraLateral.vue';
import Formulario from './components/FormularioRegistroHoras.vue';
import Tarefa from "./components/TarefaRegistrada.vue";
import Box from "./components/BoxVazio.vue";
import ITarefa from "./interfaces/ITarefa";

export default defineComponent({
  name: 'App',
  components: {
    BarraLateral,
    Formulario,
    Tarefa,
    Box
  },
  data () {
    return {
      tarefas: [] as ITarefa[],
      modoEscuro: true
    }
  },
  computed: {
    listaVazia (): boolean {
      return this.tarefas.length === 0
    }
  },
  methods: {
    salvarTarefa (tarefa: ITarefa){
      this.tarefas.push(tarefa)
    },
    trocarTema (modoEscuro: boolean) {
      this.modoEscuro = modoEscuro
    }
  }
});
</script>

<style>
.lista {
  padding: 1.5em;
}
main{
  --bg-primario: #ffff;
  --texto-primario: #000;
}
main.modo-escuro {
  --bg-primario: #2b2d42;
  --texto-primario: #ddd;
}
.conteudo {
  background-color: var(--bg-primario);
}
</style>
