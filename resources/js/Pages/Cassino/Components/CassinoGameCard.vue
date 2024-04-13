<template>
    <RouterLink :to="getRouterLink()">
        <div class="flex text-gray-700 w-full h-auto mr-4 cursor-pointer relative" @mouseover="showGameInfo = true" @mouseleave="showGameInfo = false">
            <div class="mr-4 relative">
                <RouterLink v-if="game.distribution === 'kagaming'" :to="{ name: 'casinoPlayPage', params: { id: game.id, slug: game.game_code }}">
                    <img :src="game.cover" alt="" class="rounded-lg lg:w-auto" :style="{ opacity: showGameInfo ? '0.5' : '1' }">
                </RouterLink>
                <RouterLink v-else :to="{ name: 'casinoPlayPage', params: { id: game.id, slug: game.game_code }}">
                    <img :src="/storage/+game.cover" alt="" class="rounded-lg lg:w-auto" :style="{ opacity: showGameInfo ? '0.5' : '1' }">
                </RouterLink>
                <div v-if="showGameInfo" class="absolute inset-0 flex justify-center items-center bg-opacity-10 px-3 py-2">
                    <div class="text-center text-white max-w-[90%]">
                        <span class="block truncate text-[12px]">{{ game.game_name }}</span>
                        <small class="block truncate text-[10px]">{{ game?.provider?.name }}</small>
                        <button type="button" class="mt-2 px-1 py-1 text-white rounded mx-auto px-4" style="background-color: var(--ci-primary-color);">
                            JOGAR
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </RouterLink>
</template>


<script>
import { RouterLink } from "vue-router";

export default {
    props: [ 'index', 'game'],
    components: { RouterLink },
    data() {
        return {
            isLoading: false,
            modalGame: null,
            showGameInfo: false // Adicionando a variável showGameInfo
        }
    },
    setup(props) {


        return {};
    },
    computed: {

    },
    mounted() {



    },
    methods: {
        getRouterLink() {
            if (this.game.distribution === 'kagaming') {
                return { name: 'casinoPlayPage', params: { id: this.game.id, slug: this.game.game_code }};
            } else {
                return { name: 'casinoPlayPage', params: { id: this.game.id, slug: this.game.game_code }};
            }
        }
    }
};
</script>

<style scoped>

</style>
