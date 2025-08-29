## Quick repo summary

- Purpose: This repository contains the project website / documentation built with VitePress (Vue 3). The source content lives in the `docs/` folder; the site is configured under `docs/.vitepress` and the project is driven by the npm scripts in `package.json`.
- Language: many docs are in Russian (see `docs/rules.md`).

## Big picture (what to know first)

- Primary artifact: a static documentation site (VitePress) — not a separate frontend app. Editing `docs/*.md` changes the site content.
- Site configuration: `docs/.vitepress/config.mts` — update this to change nav, sidebar, title, description, and social links.
- Theme and styling: `docs/.vitepress/theme/index.ts` and `docs/.vitepress/theme/style.css`. Add theme components under `docs/.vitepress/theme/`.
- Generated cache: `docs/.vitepress/cache/` contains build-time generated files (do not edit manually).

## Key files and where to make changes (examples)

- Add or edit a page: `docs/<name>.md` (e.g. `docs/rules.md`). The repo uses VitePress markdown features — you can use frontmatter and VitePress containers like `::: tip` / `::: warning` / `::: danger` (already used in `docs/rules.md`).
- Update site nav/sidebar: `docs/.vitepress/config.mts` — e.g. modify the `nav` array or `sidebar` array.
- Change theme behaviour: `docs/.vitepress/theme/index.ts` (Vue + TypeScript). Example: register components or wrap the default theme here.
- Style tweaks: `docs/.vitepress/theme/style.css`.
- Dependencies: `package.json` (uses `vitepress` and `vue@^3.5.20`). Scripts live under `scripts`.

## Developer workflows (commands you can run locally)

Install deps (recommended once):

```powershell
npm install
```

Run development site (hot reload):

```powershell
npm run docs:dev
# runs: vitepress dev docs  (defaults to VitePress dev server, commonly port 5173)
```

Build static site for publishing:

```powershell
npm run docs:build
# runs: vitepress build docs
```

Preview a local production build:

```powershell
npm run docs:preview
# runs: vitepress preview docs
```

Notes: there is no CI configuration present in this repository; tests are not included.

## Project-specific conventions and patterns

- Docs-first: treat `docs/` as the authoritative source — all public content lives there.
- Theme overrides live under `docs/.vitepress/theme/` rather than a top-level `src/` folder.
- Generated files under `docs/.vitepress/cache/` are ephemeral. If you see large diffs under that path, they are likely from a local build and should be ignored in PRs.
- Markdown patterns: the repo uses VitePress containers (see `docs/rules.md`). Use these containers consistently for tips/warnings/danger blocks.

## Integration points & external dependencies

- Runtime: Vue 3 is a dependency (see `package.json`). VitePress itself bundles Vue for site rendering.
- No additional services, backends, or API integrations are present inside this repo.

## Examples for common edits (copy-paste)

- To add a new sidebar entry, edit `docs/.vitepress/config.mts` and add an item in the `sidebar` array. Example already shows `Markdown Examples` and `Runtime API Examples`.
- To add a reusable Vue component for docs pages, create a file in `docs/.vitepress/theme/components/` and import/register it in `docs/.vitepress/theme/index.ts`.

## Guidance for AI agents working on this repo

- Always work on files under `docs/` and `docs/.vitepress/` for content/theme changes. Avoid editing `docs/.vitepress/cache/`.
- Preserve Russian text unless a change requires translation; do not assume English-only content.
- When modifying site structure, update both `config.mts` and any affected links in `docs/*.md`.
- Verify changes by building the site (`npm run docs:build`) or running dev server (`npm run docs:dev`) and checking that the page renders and that there are no TypeScript errors from `docs/.vitepress/theme/index.ts`.

---

If any section is unclear or you want examples for adding components/pages/CI, tell me which area to expand and I will iterate.
