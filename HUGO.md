# Course site

Install Hugo 0.147.9 or newer. Preview with:

```sh
hugo server --buildDrafts
```

Open http://localhost:1313/course/. Build locally with `hugo --buildDrafts`.
The site uses Org page bundles and weight-based navigation; no theme or JS dependency. Add only modules and lessons being developed. Each module is a branch bundle (_index.org); each lesson is a leaf bundle (index.org plus adjacent assets). Use weights 10, 20, etc. Keep drafts enabled until reviewed.

The detailed Intro planning outline remains in modules/intro.org for now, distinct from the student-facing content. The root outline is the curriculum roadmap. Keep email drafts in marketing/email, outside Hugo content. No publishing or paid access is configured; drafts and repository contents are not a security boundary.

Styling is inspired by the existing rustyeddy.com stylesheet (blue links, serif reading text, sans-serif headings), with local font fallbacks and no Bootstrap dependency.
