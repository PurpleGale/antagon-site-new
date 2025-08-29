---
layout: page
---
<script setup>
import {
  VPTeamPage,
  VPTeamPageTitle,
  VPTeamMembers,
  VPTeamPageSection
} from 'vitepress/theme'

const style = document.createElement('style')
style.textContent = `
.VPTeamPage[data-v-5f7da39d] {
    margin: 0px 0;
}
.VPTeamPageTitle[data-v-baf690b4] {
    padding: 48px 64px 48px;
}
`
document.head.appendChild(style)

const coreMembers = [
  {
    avatar: 'https://cdn.discordapp.com/avatars/590069040215490579/782808560f96b637734bebe373f9389a.webp?size=1024',
    name: 'DmitriySM',
    title: 'Создатель сервера',
    links: [
      { icon: 'discord', link: 'https://discord.com/users/590069040215490579' }
    ]
  }
]

const moderators = [
  {
    avatar: 'https://cdn.discordapp.com/avatars/790152454398410762/7bb1927281eda5c3b487f3e38eea4380.webp?size=1024',
    name: 'Mr_Marki',
    title: 'Модератор, Билдер',
    links: [
      { icon: 'discord', link: 'https://discord.com/users/790152454398410762' }
    ]
  },
  {
    avatar: 'https://cdn.discordapp.com/avatars/509357062271270933/9a2e000fc04b709087e132b43eb4ef3d.webp?size=1024',
    name: 'aquobus',
    title: 'Модератор, Тех. поддержка',
    links: [
      { icon: 'discord', link: 'https://discord.com/users/509357062271270933' }
    ]
  },
  {
    avatar: 'https://cdn.discordapp.com/avatars/741388029154820208/34e7559f047bebba98b7568a2e941d4f.webp?size=1024',
    name: 'qwillwood',
    title: 'Модератор',
    links: [
      { icon: 'discord', link: 'https://discord.com/users/741388029154820208' }
    ]
  }
]

const artifactor = [
  {
    avatar: 'https://cdn.discordapp.com/avatars/590069040215490579/782808560f96b637734bebe373f9389a.webp?size=1024',
    name: 'DmitriySM',
    title: 'Главный артефактор',
    links: [
      { icon: 'discord', link: 'https://discord.com/users/590069040215490579' }
    ]
  },
  {
    avatar: 'https://cdn.discordapp.com/avatars/464065483898093580/8695911df75ecbc5f8cc0b8c9dc856cb.webp?size=1024',
    name: 'yarick5002',
    title: 'Идейный вдохновитель',
    links: [
      { icon: 'discord', link: 'https://discord.com/users/464065483898093580' }
    ]
  },
  {
    avatar: 'https://cdn.discordapp.com/avatars/993544184659181661/0adb4bca1ed5a4dfd419682ddc0e023b.webp?size=1024',
    name: 'Tarteen228',
    title: 'Артефактор',
    links: [
      { icon: 'discord', link: 'https://discord.com/users/993544184659181661' }
    ]
  }
]

const other = [
  {
    avatar: 'https://cdn.discordapp.com/avatars/348091015103643648/c32e212010009fc51d7b9621115ca3f5.webp?size=1024',
    name: 'BloodySupport',
    title: 'Это я',
  },
  {
    avatar: 'https://cdn.discordapp.com/avatars/782549536701677568/cdbaa7dd245a5c0efaa13f9b68aa1476.webp?size=1024',
    name: 'nonxedy',
    title: 'Технический администратор',
    links: [
      { icon: 'discord', link: 'https://discord.com/users/782549536701677568' }
    ]
  },

  {
    avatar: 'https://cdn.discordapp.com/avatars/810918366045798451/2e0fd5a14b0407cf6eed3039dc562953.webp?size=1024',
    name: 'MessageScheduler',
    title: 'Легенда..',
    links: [
      { icon: 'discord', link: 'https://discord.com/users/810918366045798451' }
    ]
  }
]

</script>
<VPTeamPage>
  <VPTeamPageTitle>
    <template #title>Наша Команда</template>
    <template #lead>
      Познакомьтесь с командой, которая делает Re:Antagon особенным!
    </template>
  </VPTeamPageTitle>

  <VPTeamPageSection>
    <template #title>Основная команда</template>
    <template #lead>Основатели и руководители проекта.</template>
    <template #members>
      <VPTeamMembers size="medium" :members="coreMembers" />
    </template>
  </VPTeamPageSection>

  <VPTeamPageSection>
    <template #title>Модераторы</template>
    <template #lead>Наши модераторы помогают поддерживать порядок и делают сервер безопасным и приятным местом для всех.</template>
    <template #members>
      <VPTeamMembers size="small" :members="moderators" />
    </template>
  </VPTeamPageSection>

  <VPTeamPageSection>
    <template #title>Артефакторы</template>
    <template #lead>Благодаря артефакторам появляются подземелья, мобы и предметы на сервере.</template>
    <template #members>
      <VPTeamMembers size="small" :members="artifactor" />
    </template>
  </VPTeamPageSection>

  <VPTeamPageSection>
    <template #title>Отдельное спасибо ❤️</template>
    <template #lead>В этом списке находятся участники разных должностей.</template>
    <template #members>
      <VPTeamMembers size="small" :members="other" />
    </template>
  </VPTeamPageSection>

  <VPTeamPageSection>
  </VPTeamPageSection>
</VPTeamPage>
