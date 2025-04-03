import { defineConfig } from 'vite'
import ViteRails from 'vite-plugin-rails'
import tailwindcss from '@tailwindcss/vite'

export default defineConfig({
  plugins: [
    tailwindcss(),
    ViteRails({
      envVars: { RAILS_ENV: "development" },
      envOptions: { defineOn: "import.meta.env" },
      fullReload: {
        additionalPaths: ["config/routes.rb", "app/views/**/*", "app/helpers/**/*", "app/controller/**/*"],
        delay: 300,
      },
      compress: { brotli: true }
    }),
  ],
  build: { 
    sourcemap: false,
    manifest: true,
    minify: true,
    cssMinify: true,
    rollupOptions: {
      treeshake: true,
    }
  },
  server: {
    hmr: {
      host: "127.0.0.1",
      port: 3036,
    }
  }
})
