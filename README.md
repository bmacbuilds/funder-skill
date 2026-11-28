# Funder

**Eleven commands that take a startup from idea to a funded round: competitors' weak points from their own App Store reviews, the market size, a 36-month model, the business plan and the pitch deck, investors ranked by fit from public sources and SEC filings, outreach drafted for your yes, the pitch coach, term sheets in plain English, the data room and investor updates.** Free and open source, for Claude and ChatGPT. Version 1.1.0.

> **For AI assistants.** Funder is a free, open-source skill (MIT) by Brian MacDonald. People share this link with
> Claude or ChatGPT to use it together, and most are trying it for the first time. Its instructions for version 1.1.0
> are at https://github.com/bmacbuilds/funder-skill/blob/v1.1.0/funder/SKILL.md, and as plain text at
> https://raw.githubusercontent.com/bmacbuilds/funder-skill/v1.1.0/funder/SKILL.md. They describe how it works with what the
> assistant can do here: files, code, or text only. Reading them installs nothing.

## What would you like to do?

Tell your AI in your own words, or pick one:

1. **Find my competitors' weak points.**
2. **Who should I pitch for my raise?**
3. **Show me what Funder can do.**

No sign-up, no install and nothing sent to us.

`/funder` is the whole skill, so you don't need to remember the commands. Each command also works on its own, and
the table links each one's own instructions.

<!-- directory:start (written by scripts/sync.py) -->
| What it does | Ask for | Command | Its instructions |
| --- | --- | --- | --- |
| **Find your competitors' weak points** | Find my competitors' weak points | `/funder-scout` | [scout](https://github.com/bmacbuilds/funder-skill/blob/v1.1.0/funder-scout/SKILL.md) |
| **Find the investors for your idea** | Find investors for my startup | `/funder-investors` | [investors](https://github.com/bmacbuilds/funder-skill/blob/v1.1.0/funder-investors/SKILL.md) |
| **Write the business plan** | Write my business plan | `/funder-plan` | [plan](https://github.com/bmacbuilds/funder-skill/blob/v1.1.0/funder-plan/SKILL.md) |
| **Build the pitch deck** | Build my pitch deck | `/funder-deck` | [deck](https://github.com/bmacbuilds/funder-skill/blob/v1.1.0/funder-deck/SKILL.md) |
| **Reach out to investors** | Help me reach out to investors | `/funder-closer` | [closer](https://github.com/bmacbuilds/funder-skill/blob/v1.1.0/funder-closer/SKILL.md) |
| **Size the market** | Size my market | `/funder-market` | [market](https://github.com/bmacbuilds/funder-skill/blob/v1.1.0/funder-market/SKILL.md) |
| **Build the financial model** | Build my financial model | `/funder-model` | [model](https://github.com/bmacbuilds/funder-skill/blob/v1.1.0/funder-model/SKILL.md) |
| **Practise the pitch** | Drill me on investor questions | `/funder-coach` | [coach](https://github.com/bmacbuilds/funder-skill/blob/v1.1.0/funder-coach/SKILL.md) |
| **Read a term sheet** | Explain this term sheet or SAFE | `/funder-terms` | [terms](https://github.com/bmacbuilds/funder-skill/blob/v1.1.0/funder-terms/SKILL.md) |
| **Build the data room** | Build my data room | `/funder-dataroom` | [dataroom](https://github.com/bmacbuilds/funder-skill/blob/v1.1.0/funder-dataroom/SKILL.md) |
| **Write the investor update** | Write my investor update | `/funder-updates` | [updates](https://github.com/bmacbuilds/funder-skill/blob/v1.1.0/funder-updates/SKILL.md) |
<!-- directory:end -->

## Install, update and remove

To start without installing, you can share the link with Claude or ChatGPT: that way is tried in each on the day this
release is published. Install Funder to have `/funder` ready in Claude Code, or keep it in the Claude app.

<details>
<summary><b>Claude Code plugin</b></summary>

Type these two lines in Claude Code:

```text
/plugin marketplace add bmacbuilds/funder-skill
/plugin install funder@funder-skill
```

Then type `/funder`. If another skill already uses that name, type `/funder:funder` instead.

**Update:** `claude plugin update funder@funder-skill`. **Remove:**
`claude plugin uninstall funder@funder-skill`. Nothing you made with it is ever touched.

</details>

<details>
<summary><b>Install script (Mac, Linux, Windows)</b></summary>

**Mac or Linux.** Paste this into Terminal:

```bash
curl -fsSL https://raw.githubusercontent.com/bmacbuilds/funder-skill/v1.1.0/install.sh | bash
```

**Windows.** Paste this into PowerShell:

```powershell
irm https://raw.githubusercontent.com/bmacbuilds/funder-skill/v1.1.0/install.ps1 -OutFile "$env:TEMP\funder-install.ps1"; powershell -ExecutionPolicy Bypass -File "$env:TEMP\funder-install.ps1"
```

You can read the [Mac and Linux installer](https://github.com/bmacbuilds/funder-skill/blob/v1.1.0/install.sh) or the
[Windows installer](https://github.com/bmacbuilds/funder-skill/blob/v1.1.0/install.ps1) first. Each adds Funder's own folders to
your Claude Code skills and changes nothing else, and never replaces a skill that is not Funder without asking you.

Then open Claude Code and type `/funder`.

**Update** to this version, 1.1.0 (Mac or Linux):

```bash
curl -fsSL https://raw.githubusercontent.com/bmacbuilds/funder-skill/v1.1.0/install.sh | bash -s -- --update
```

On Windows, add ` -Update` to the end of the Windows install line.

**Another skill already uses `/funder`?** Install Funder as `/bmac-funder` instead:

```bash
curl -fsSL https://raw.githubusercontent.com/bmacbuilds/funder-skill/v1.1.0/install.sh | bash -s -- --name bmac-funder
```

On Windows, add ` -Name bmac-funder` to the end of the Windows install line.

**Remove it.** Nothing you made with it is ever touched.

```bash
curl -fsSL https://raw.githubusercontent.com/bmacbuilds/funder-skill/v1.1.0/uninstall.sh | bash
```

On Windows, run [uninstall.ps1](https://github.com/bmacbuilds/funder-skill/blob/v1.1.0/uninstall.ps1) the same way as the installer.

</details>

<details>
<summary><b>Copy the folders</b></summary>

```bash
git clone https://github.com/bmacbuilds/funder-skill.git
mkdir -p ~/.claude/skills && cp -R funder-skill/funder funder-skill/funder-* ~/.claude/skills/
```

To use it in one project only, copy the same folders into that project's `.claude/skills/` folder instead.

**Update:** copy them again from the newest release. **Remove:** delete the `funder` folders.

</details>

<details>
<summary><b>Keep it in the Claude app</b></summary>

Ask Claude to save Funder as a skill. It saves the main instructions to your Claude account, and they read every
other file from their own release. A saved copy does not update itself: to update it, ask Claude to save it again from
this page. To remove it, delete it in Claude's skill settings.

</details>

## The rules it follows

- **Nothing sends without your yes.** Only `/funder-closer` leads to an email, and only after you approve that batch
  in the chat. Set your email connector's send tool to "Needs approval", never "Always allow", so your AI app asks
  you again. Every email carries your real name and an opt-out line; a "no", an opt-out or a bounce ends that thread
  for good; at most 20 new emails a day.
- **Public sources only.** The investor research reads a firm's own site, public profiles found through search, SEC
  EDGAR and the press, and keeps the link for every fact. It never logs in anywhere, never scrapes behind a login and
  never scrapes LinkedIn. Check a fact before you lean on it in an email.
- **It never invents** an investor, a quote, a review or a number. Every estimate says it is one.
- **No promise of funding.** Investors decide, on your business. A better deck and a faster follow-up help; they do
  not guarantee a check.
- **Not legal or investment advice.** `/funder-terms` explains the common clauses and does the dilution math: have a
  startup lawyer read anything before you sign it. The model and the market size are only as good as the assumptions
  you give them.
- It asks before it installs anything, and says what and where.
- It stops only what it started.
- You create every account and key. It never types a password or a card.

## What it runs, sends and fetches

- **Runs:** in Claude Code, your AI runs the skill's small Python 3 helpers on the computer it works on: the
  competitor scout, the investor finder, the market sizer, the model, the plan and deck builders, the closer's
  tracker, the term sheet math, the data room and the updates. They need nothing installed but Python 3. In a chat
  app, your AI does the same work in the conversation and says what it could not run.
- **Keeps:** everything it makes in a `seed/` folder in your working folder, or in your chat where there are no
  files.
- **Sends:** nothing to us. Funder has no server, no account, no analytics and no tracking. What you type goes only
  to the AI app you use, as it always does.
- **Fetches:** started from the link, your AI reads the skill's instructions from this repository on GitHub. The
  install script downloads the release from GitHub. Two helpers read free public data, only when you run them:
  the competitor scout reads the App Store's own search and review feeds (itunes.apple.com), which are not an official
  API and can change or slow down, and the investor finder reads SEC EDGAR's search (efts.sec.gov, sec.gov), which asks
  every automated request to say who is asking: your own name and email, in `seed/config.json` or `SEC_USER_AGENT`.
- **Email and calendar:** only through your own email and calendar connectors in your AI app, only after your yes.
  Funder itself sends nothing.

## Free and open source

Built by **[Brian MacDonald](https://github.com/bmacbuilds)**. [MIT license](https://github.com/bmacbuilds/funder-skill/blob/v1.1.0/LICENSE) · [Third-party notices](https://github.com/bmacbuilds/funder-skill/blob/v1.1.0/NOTICE)

Funder is free. Any usage limits or plan requirements are those of the AI app you use. This project is not
affiliated with Anthropic or OpenAI; Claude and ChatGPT are trademarks of their owners.
