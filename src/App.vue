<script setup lang="ts">
</script>

<template>
  <div class="w-full h-screen p-4 font-mono text-center">
    <section class="flex flex-col space-y-4 mt-[16%] font-bold text-4xl">
      <div>Hi! 👋</div>
      <div>I'm yooson.</div>
    </section>
    <section class="mt-4 text-gray-700">
      <p>A Developer, who loves films and photography.</p>
    </section>
  </div>
  <footer class="absolute bottom-0 flex justify-center space-x-2 w-full mb-4 text-sm">
    <div class="flex space-x-2 items-center font-mono text-gray-500">
      <span>© Copyright</span>
      <div class="flex items-center">
        <div class="w-3 h-3 bg-[url('./assets/logo.png')] bg-contain rounded-full" />
        <span class="ml-0.5">yooson 2024</span>
      </div>
    </div>
    <div class="flex items-center text-blue-600 hover:underline visited:text-purple-600">
      <a href="http://beian.miit.gov.cn/" target="_blank">沪ICP备2024080497号</a>
      <img src="./assets/beian.png" alt="beian" class="w-4 h-4 mx-1" />
      <a href="https://beian.mps.gov.cn/#/query/webSearch?code=31011702889871" rel="noreferrer"
        target="_blank">沪公网安备31011702889871</a>
    </div>
  </footer>
</template>
