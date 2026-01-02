# Git Internals

A technical book project using Papyrxis workspace.

## Building

```bash
make
```

This will:
1. Sync workspace components based on workspace.yml
2. Build the document with appropriate engine

## Watch Mode

Auto-rebuild on file changes:

```bash
make watch
```

## Customization

Edit `workspace.yml` to configure components, colors, features, etc.

To override workspace components, create files in `custom/` directory.

## Version

Version is automatically generated from git tags.

## Structure

- `frontmatter/` - Front matter pages
- `parts/` - Book parts and chapters
- `backmatter/` - Appendices and back matter
- `figures/` - Image files
- `references/` - Bibliography files
- `custom/` - Custom component overrides
- `workspace/` - Synced workspace files (auto-generated)

## License

See copyright information in the document.
