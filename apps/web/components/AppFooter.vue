<script setup lang="ts">
import { siteConfig } from "~/site.config";
</script>

<template>
  <ClientOnly>
    <site-footer
      :name="siteConfig.authorName"
      :href="siteConfig.authorUrl"
      :year="siteConfig.copyrightYear"
      copyright="Copyright© {year}. All bugs reserved."
      reveal="hover"
      :style="{
        '--link': 'rgb(var(--primary))',
        '--link-hover': 'rgb(var(--primary-hovered))',
      }"
    >
      <span slot="tagline">Made with <span class="text-secondary">❤️</span> from Spain.</span>
    </site-footer>
  </ClientOnly>
</template>
