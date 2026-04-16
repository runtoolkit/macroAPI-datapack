# 🔄 Migration Guide

← [Home](Home)

---

## Migrating from `ToolkitMC/macroAPI`

The project has moved from the **ToolkitMC organization** to the **tickwarden personal account**.

| | Old | New |
|---|---|---|
| **Repository** | `ToolkitMC/macroAPI` | `tickwarden/macroAPI-datapack` |
| **Releases** | `github.com/ToolkitMC/macroAPI/releases` | `github.com/tickwarden/macroAPI-datapack/releases` |
| **Issues** | `ToolkitMC/macroAPI/issues` | `tickwarden/macroAPI-datapack/issues` |
| **Discussions** | `ToolkitMC/macroAPI/discussions` | `tickwarden/macroAPI-datapack/discussions` |

> The old repository (`ToolkitMC/macroAPI`) is now **archived** (read-only). No further updates will be published there.

### Action required

If you have the old repository bookmarked or cloned:

```bash
# Update your local clone's remote
git remote set-url origin https://github.com/tickwarden/macroAPI-datapack.git
```

If you depend on this project in another datapack via LanternLoad, no namespace changes are needed — the `macro:` namespace and `macroAPI load.status` scoreboard are unchanged.

---

## Migrating from `v3.x` → `v4.0.1`

### StringLib dependency

`v4.0.1` bundles [StringLib (CMDred, MIT)](https://github.com/CMDred/StringLib) directly. If your setup previously included StringLib separately:

- You can remove the standalone StringLib datapack — it is now part of macroAPI.
- Access string functions via `macro:lib/string/*` wrappers instead of `stringlib:*` directly.
- The `stringlib:` namespace is still present internally; do not call it directly from user code.

```mcfunction
# Old (direct StringLib call)
function stringlib:replace with storage stringlib:input {}

# New (via macro wrapper)
data modify storage macro:input string set value "Hello World"
data modify storage macro:input find set value "World"
data modify storage macro:input replace set value "Everyone"
function macro:lib/string/replace with storage macro:input {}
# output: macro:output string.result
```

### Load Confirmation Gate

`v4.0.1` introduces a load confirmation gate. After `/reload`, you must run:

```
/function ame_load:load/yes
```

…before the engine initializes storage. On headless servers, check the server log for the confirmation prompt.

To skip the gate for automated testing, call `ame_load:load/yes` from a scheduled function or startup script.

---

## Migrating from `v2.x` → `v4.0.1`

### `rate_limit` module breaking change

The `rate_limit` module was completely rewritten in v4.0.1:

- Old sub-function-based API removed
- New API: `check` / `tick` / `config` — pure scoreboard, no sub-functions
- Overlay-specific `rate_limit` copies removed; only the base overlay is used now

Update any calls from `macro:rate_limit/start` / `macro:rate_limit/check_and_reset` to the new `macro:rate_limit/check` + `macro:rate_limit/tick` pattern.

---

## Migrating from `v1.x` → `v2.0.0`

### `action` / `callback` → `invoke`

The `invoke` storage key replaced two previous names due to parser conflicts:

| Version | Key |
|---------|-----|
| ≤ v1.0.4 | `action` |
| v1.0.5 – v1.0.6-pre1 | `callback` |
| v1.0.6-pre2+ | `invoke` |

Update all `data modify storage macro:input action` and `macro:input callback` lines to use `invoke`.

### Namespace typo (`mopenro` → `macro`)

If you copied any function stubs from pre-v2.0.3-pre2 sessions, check for `mopenro.*` tags, scoreboards, and storage paths — they should all be `macro.*`.

---

## Text Component Syntax (1.21.5+)

If you are upgrading your **Minecraft server** to 1.21.5+ while keeping existing macroAPI-based datapacks:

| Old (≤ 1.21.4) | New (1.21.5+) |
|---|---|
| `"clickEvent": {"action":"run_command","value":"..."}` | `"click_event": {"action":"run_command","command":"..."}` |
| `"clickEvent": {"action":"suggest_command","value":"..."}` | `"click_event": {"action":"suggest_command","command":"..."}` |
| `"clickEvent": {"action":"open_url","value":"..."}` | `"click_event": {"action":"open_url","url":"..."}` |
| `"hoverEvent": {"action":"show_text","contents":"..."}` | `"hover_event": {"action":"show_text","value":"..."}` |

macroAPI handles this automatically via overlays. For your own datapacks that use raw `tellraw` JSON, you must update these keys manually for 1.21.5+ servers.
