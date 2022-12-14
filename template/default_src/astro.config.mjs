import { defineConfig } from 'astro/config';
import compress from "astro-compress";

// https://astro.build/config
export default defineConfig({
    base: '',
    //只要這行就可以把 root path 設定在
    outDir: './dist/',
    integrations: [
        compress({
        path: "./dist/50story"
    })]
});