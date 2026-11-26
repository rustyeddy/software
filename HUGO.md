# Course site

Install Hugo 0.147.9 or newer. Preview with:

```sh
make drafts
```

Open http://localhost:1313/course/. Use `make serve` for a release preview, `make build` for a release build, and `make check` for CI-equivalent checks. Set `BIND=0.0.0.0` explicitly if LAN preview is wanted.
The site uses Org page bundles and weight-based navigation; no theme or JS dependency. Add only modules and lessons being developed. Each module is a branch bundle (_index.org); each lesson is a leaf bundle (index.org plus adjacent assets). Use weights 10, 20, etc. Keep drafts enabled until reviewed.

Module and developed lesson sources live under content/course. Planning notes for lessons not yet created remain in outline.org until moved into their lesson sources. Do not duplicate lesson outlines. The root outline is the curriculum roadmap. Keep email drafts in marketing/email, outside Hugo content. No publishing or paid access is configured; drafts and repository contents are not a security boundary. Before publication, choose the canonical production base URL, hosting and access-control model, and implement the landing page and Buttondown signup. Do not publish paid content to a publicly accessible static site.

Styling is inspired by the existing rustyeddy.com stylesheet (blue links, serif reading text, sans-serif headings), with local font fallbacks and no Bootstrap dependency.
