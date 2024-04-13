<template>
    <GameLayout>
        <LoadingComponent :isLoading="isLoading">
            <div class="text-center">
                <span>{{ $t('Loading game information') }}</span>
            </div>
        </LoadingComponent>

        <div v-if="!isLoading && game" :class="{ 'w-full': modeMovie, 'lg:w-2/3': !modeMovie }" class="mx-auto px-2 lg:px-4 py-2 lg:py-6 relative">
            <div class="bg-gray-300/20 dark:bg-gray-700 rounded flex justify-between px-4 py-2">
                <div class="flex items-center justify-center gap-3">
                    <a href="">{{ game?.provider.name }}</a>
                    <i class="fa-regular fa-angle-right text-gray-500"></i>
                    <p class="text-gray-500">{{ game.game_name }}</p>
                </div>
                <div>

                </div>
            </div>

            <div class="game-screen" id="game-screen">
                <fullscreen v-model="fullscreen" :page-only="pageOnly">
                    <div v-if="showButton && game.game_type === 'live' && game.distribution === 'evergame'" class="game-full fullscreen-wrapper flex items-center justify-center">
                        <button @click.prevent="openModal(gameUrl)" type="button" class="py-2.5 px-5 me-2 mb-2 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-100 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700">
                            Clique para começar
                        </button>
                    </div>
                    <iframe v-else :src="gameUrl" class="game-full fullscreen-wrapper"></iframe>
                </fullscreen>
            </div>

            <div class="flex justify-between items-center w-full px-3 py-2 bg-gray-300/20 dark:bg-gray-800 game-footer">
                <div class="flex items-center gap-3 text-gray-500">
                    <button @click.prevent="toggleFavorite" :class="{ 'text-yellow-400': game.hasFavorite }"><i class="fa-solid fa-star mr-2"></i> {{ game.totalFavorites }}</button>
                    <button @click.prevent="toggleLike" :class="{ 'text-red-500': game.hasLike }"><i class="fa-solid fa-heart mr-2"></i> {{ game.totalLikes }}</button>
                    <button><i class="fa-regular fa-eyes mr-2"></i> {{ game.views }}</button>
                </div>
                <div class="text-gray-500 flex items-center gap-3">
                    <div>
                        <button data-tooltip-target="tooltip-mode-movie" type="button" @click.prevent="modeMovie = !modeMovie">
                            <i class="fa-solid fa-window-restore"></i>
                        </button>
                        <div id="tooltip-mode-movie" role="tooltip" class="absolute z-10 invisible inline-block px-3 py-2 text-sm font-medium text-white transition-opacity duration-300 bg-gray-900 rounded-lg shadow-sm opacity-0 tooltip dark:bg-gray-700">
                            Modo Filme
                            <div class="tooltip-arrow" data-popper-arrow></div>
                        </div>
                    </div>

                    <div>
                        <button data-tooltip-target="tooltip-mode-expand" type="button" @click.prevent="togglefullscreen">
                            <i class="fa-sharp fa-solid fa-expand"></i>
                        </button>
                        <div id="tooltip-mode-expand" role="tooltip" class="absolute z-10 invisible inline-block px-3 py-2 text-sm font-medium text-white transition-opacity duration-300 bg-gray-900 rounded-lg shadow-sm opacity-0 tooltip dark:bg-gray-700">
                            Modo Fullscreen
                            <div class="tooltip-arrow" data-popper-arrow></div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- Start Tabs -->
            <div class="mb-4 border-b border-gray-200 dark:border-gray-700 mt-3 lg:mt-16">
                <ul class="flex flex-wrap -mb-px text-sm font-medium text-center text-gray-500 dark:text-gray-400" id="tabs-info" role="tablist">
                    <li class="me-2" role="presentation">
                        <button
                            class="inline-block rounded-t-lg border-b-2 border-transparent p-4 hover:border-gray-300 hover:text-gray-600 dark:hover:text-gray-300"
                            id="default-tab"
                            type="button"
                            role="tab"
                            aria-controls="default-panel"
                            aria-selected="false"
                        >
                            {{ game.game_name }}
                        </button>
                    </li>
                    <li class="me-2" role="presentation">
                        <button
                            class="inline-block rounded-t-lg border-b-2 border-transparent p-4 hover:border-gray-300 hover:text-gray-600 dark:hover:text-gray-300"
                            id="description-tab"
                            type="button"
                            role="tab"
                            aria-controls="description-panel"
                            aria-selected="false"
                        >
                            {{ $t('Description') }}
                        </button>
                    </li>
                    <li class="me-2" role="presentation">
                        <button
                            class="inline-block rounded-t-lg border-b-2 border-transparent p-4 hover:border-gray-300 hover:text-gray-600 dark:hover:text-gray-300"
                            id="reviews-tab"
                            type="button"
                            role="tab"
                            aria-controls="reviews-panel"
                            aria-selected="false"
                        >
                            {{ $t('Reviews') }}
                        </button>
                    </li>
                </ul>
            </div>
            <div id="tabContentExample">
                <div
                    class="hidden rounded-lg bg-gray-50 p-4 dark:bg-gray-800"
                    id="default-panel"
                    role="tabpanel"
                    aria-labelledby="default-tab">
                    <div class="flex w-full">
                        <div class="w-full flex flex-col lg:flex-row justify-between">
                            <div class="w-full flex">
                                <div class="flex">
                                    <div v-if="game.distribution === 'kagaming'">
                                        <img :src="game.cover" alt="" class="w-full h-32 rounded-xl">
                                    </div>
                                    <div v-else>
                                        <img :src="`/storage/`+game.cover" alt="" class="w-full h-32 rounded-xl">
                                    </div>
                                </div>
                                <div class="p-4">
                                    <p class="text-2xl">{{ game.game_name }}</p>
                                    <p class="text-[12px]">{{ $t('by') }} <a href="" v-if="game.provider" class="font-bold text-white">{{ game?.provider.name }}</a></p>
                                    <p>{{ game.dateHumanReadable }}</p>
                                </div>
                            </div>
                            <div class="w-full mt-0 lg:mt-5">
                                <h2>{{ $t('Game Info') }}</h2>
                                <div class="mt-3 grid grid-cols-2 gap-1">
                                    <div class="p-3 bg-gray-700 flex justify-between">
                                        <p>RTP ({{ $t('Return to Player') }})</p>
                                        <p class="text-green-500">95%</p>
                                    </div>
                                    <div class="p-3 bg-gray-700 flex justify-between">
                                        <p>Provider</p>
                                        <p class="text-green-500">{{ game.provider.name }}</p>
                                    </div>
                                    <div class="p-3 bg-gray-700 flex justify-between">
                                        <p>Max Win</p>
                                        <p class="text-green-500">1000x</p>
                                    </div>
                                    <div class="p-3 bg-gray-700 flex justify-between">
                                        <p>Type</p>
                                        <p class="text-green-500">{{ game.game_type }}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div
                    class="hidden rounded-lg bg-gray-50 p-4 dark:bg-gray-800"
                    id="description-panel"
                    role="tabpanel"
                    aria-labelledby="description-tab"
                >
                    <div v-html="game.description"></div>
                </div>
                <div
                    class="hidden rounded-lg bg-gray-50 p-4 dark:bg-gray-800"
                    id="reviews-panel"
                    role="tabpanel"
                    aria-labelledby="reviews-tab"
                >

                </div>
            </div>
            <!-- End Tabs -->
        </div>
        <div v-if="undermaintenance" class="flex flex-col items-center justify-center text-center py-24">
            <h1 class="text-2xl mb-4">JOGO EM MANUTENÇÃO</h1>
            <img :src="`/assets/images/work-in-progress.gif`" alt="" width="400">
        </div>
    </GameLayout>
</template>

<script>
import { initFlowbite, Tabs, Modal } from 'flowbite';
import { RouterLink, useRoute, useRouter } from "vue-router";
import { useAuthStore } from "@/Stores/Auth.js";
import { component } from 'vue-fullscreen';
import LoadingComponent from "@/Components/UI/LoadingComponent.vue";
import GameLayout from "@/Layouts/GameLayout.vue";
import HttpApi from "@/Services/HttpApi.js";

import {
    defineComponent,
    toRefs,
    reactive,
} from 'vue';

export default {
    props: [],
    components: {
        GameLayout,
        LoadingComponent,
        RouterLink,
        component
    },
    data() {
        return {
            isLoading: true,
            game: null,
            modeMovie: false,
            gameUrl: null,
            token: null,
            gameId: null,
            tabs: null,
            undermaintenance: false,
        }
    },
    setup() {
        const router = useRouter();
        const state = reactive({
            fullscreen: false,
            pageOnly: false,
        })
        function togglefullscreen() {
            console.log("CLICOU");
            state.fullscreen = !state.fullscreen
        }

        return {
            ...toRefs(state),
            togglefullscreen,
            router
        }
    },
    computed: {
        userData() {
            const authStore = useAuthStore();
            return authStore.user;
        },
        isAuthenticated() {
            const authStore = useAuthStore();
            return authStore.isAuth;
        },
    },
    mounted() {

        const userAgent = navigator.userAgent.toLowerCase();
        const isSafari = userAgent.includes('safari') && !userAgent.includes('chrome');
        const isSamsungInternet = userAgent.includes('samsung') && userAgent.includes('safari') && !userAgent.includes('chrome');
        const isIOS = userAgent.includes('iphone') || userAgent.includes('ipad');

        if (isSafari || isSamsungInternet || isIOS) {
            this.showButton = true;
        }
    },
    methods: {
        loadingTab: function() {
            const tabsElement = document.getElementById('tabs-info');
            if(tabsElement) {
                const tabElements = [
                    {
                        id: 'default',
                        triggerEl: document.querySelector('#default-tab'),
                        targetEl: document.querySelector('#default-panel'),
                    },
                    {
                        id: 'descriptions',
                        triggerEl: document.querySelector('#description-tab'),
                        targetEl: document.querySelector('#description-panel'),
                    },
                    {
                        id: 'reviews',
                        triggerEl: document.querySelector('#reviews-tab'),
                        targetEl: document.querySelector('#reviews-panel'),
                    },
                ];

                const options = {
                    defaultTabId: 'default',
                    activeClasses: 'text-green-600 hover:text-green-600 dark:text-green-500 dark:hover:text-green-400 border-green-600 dark:border-green-500',
                    inactiveClasses: 'text-gray-500 hover:text-gray-600 dark:text-gray-400 border-gray-100 hover:border-gray-300 dark:border-gray-700 dark:hover:text-gray-300',
                    onShow: () => {

                    },
                };

                const instanceOptions = {
                    id: 'default',
                    override: true
                };

                /*
                * tabElements: array of tab objects
                * options: optional
                * instanceOptions: optional
                */
                this.tabs = new Tabs(tabsElement, tabElements, options, instanceOptions);
            }
        },
        openModal(gameUrl) {
            window.open(gameUrl);
        },

        getGame: async function() {
            const _this = this;

            return await HttpApi.get('games/single/'+ _this.gameId)
                .then(async response =>  {
                    if(response.data?.action === 'deposit') {
                        _this.$nextTick(() => {
                            _this.router.push({ name: 'profileDeposit' });
                        });

                    }

                    const game = response.data.game;
                    _this.game = game;

                    // if(game.distribution == 'evergame') {
                    //     window.open(response.data.gameUrl)
                    // }

                    _this.gameUrl = response.data.gameUrl;
                    _this.token = response.data.token;
                    _this.isLoading = false;

                    _this.$nextTick(() => {
                        _this.loadingTab();
                    });
                })
                .catch(error => {

                    _this.isLoading = false;
                    _this.undermaintenance = true;
                    Object.entries(JSON.parse(error.request.responseText)).forEach(([key, value]) => {

                    });
                });
        },
        toggleFavorite: function() {
            const _this = this;
            return HttpApi.post('games/favorite/'+ _this.game.id, {})
                .then(response =>  {
                    _this.getGame();
                    _this.isLoading = false;
                })
                .catch(error => {
                    _this.isLoading = false;
                });
        },
        toggleLike: async function() {
            const _this = this;
            return await HttpApi.post('games/like/'+ _this.game.id, {})
                .then(async response =>  {
                    await _this.getGame();
                    _this.isLoading = false;
                })
                .catch(error => {
                    _this.isLoading = false;
                });
        }
    },
    async created() {
        if(this.isAuthenticated) {
            const route = useRoute();
            this.gameId = route.params.id;


            await this.getGame();
        }else{
            this.router.push({ name: 'login', params: { action: 'openlogin' } });
        }
    },
    watch: {


    },
};
</script>

<style>
.game-screen{
    margin-top: 30px;
    width: 100%;
    min-height: 650px;
}

.game-screen .game-full{
    width: 100%;
    min-height: 650px;
    border-top-left-radius: 8px;
    border-top-right-radius: 8px;
}
.game-footer{
    border-bottom-left-radius: 8px;
    border-bottom-right-radius: 8px;
}
</style>
