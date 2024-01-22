# Digging Into The Developer's Toolbox (2024 Edition)

I first gave this presentation at CFUnited in 2010.<br />
And last gave it at cf.Objective in 2014.<br />

## Update 2024

- espanso
- fzf, ripgrep, fd, tldr, etc
- prompt - starship, etc
- docker / commandbox
- vscode snippets / emmet
- bash aliases

## Why Automate?

Not What But Who! Tools are important.<br />
But you are really trying to develop good working habits that maximize your time and reduce your effort.<br />
It’s not what we are trying to automate, but who.<br />

> Main Entry: au•to•mate <br />
> Pronunciation: \ˈȯ-tə-ˌmāt\ <br />
> Function: verb <br />
> To convert to largely automatic operation <br />

## Three R’s
Repetition
We’ve all gone through the struggle of learning a new tool whether it is a new operating system or IDE. Learning new tools and techniques takes time.

### Resolution
It also takes patience. While you may want to give up you need to give yourself time to adjust to new techniques. You are re-training yourself to work smarter.

### Re-evaluate
No tool is perfect. With the internet there is a vast flood of software available. Constantly be on the lookout for new tools. See my resources section at the end of the handout for places to look.

### Time Savings
Your time is precious. Always consider how you can do repetitive tasks in less time. If you do it more than once consider automating the task.

## TYPE MORE (mouse less)
While the mouse is a useful tool in some circumstances the majority of our time as coders is spent typing in code. The less we need to stop typing and move a mouse the more we can accomplish. Almost every application includes keyboard shortcuts. Take time to learn them.

### Espanso / AutoHotkey

A text expander can automate the tedious things you type over and over every day.

Q. But my IDE already has something similar… why not use snippets in Sublime or VSCode?
A. Snippets are only available in your IDE. What happens when you are editing some code in Notepad? Sending an email with some code samples? Writing code documentation in Word? With these tools you can use the same ‘snippets’ everywhere – not just in your IDE.

### Zen Coding (Now called Emmet)
Zen Coding is difficult to describe – from their website: “the core of this plugin is a powerful abbreviation engine which allows you to expand expressions…into HTML code”. Emmet is built into VSCode!

### Stop Filling in Forms
Stop filling in the same information into the same form fields day after day. How many times do you enter the same information into forms like blog comments and order forms? There are several popular browser plugins/extensions that enable you to easily fill out forms with a click or keystroke.

### Clipboard Manager
How many times a day do you cut-and-paste text, snippets of code, email? Start using a clipboard manager and get more control. Copied something yesterday? Reuse it from the clipboard memory! Easily accessible via a keyboard shortcut the clipboard manager can remember what you copied so you don’t have to. Most allow searching, support images and have lots of options.

### Aliases
If you are using a Mac or Linux you can leverage system level aliases!

Instead of typing 'docker compose up (long string of stuff here)

Create an alias!

```
alias dcu='cd ~/www/devenv && docker compose up -d lindev apinext login && cd -'
```

### Other Ideas

Do you have a fancy mouse with extra buttons! Put them to use! Use something like Steer Mouse to add functionality to those buttons!

## GET ORGANIZED

### Launchers
Is your desktop littered with icons for programs and documents? Do you have to hunt to find programs to launch? Clear out that clutter and let the computer do the work. Launchers can scan your entire computer for programs, documents and more. And with a simple keystroke you can easily find what you are looking for in seconds.

### Virtual Desktops
Hopefully you have two monitors but wouldn’t it be nice to have 4? Or 6? Virtual Desktops can do just that. Have a desktop dedicated to email. Another to your browser and yet another to you IDE tools. Easily switch between them with a keyboard shortcut.

## WORK SMARTER
Don’t forget the tools you use every day. I once cleaned up a huge spam mess on a Trac install by mashing up some ColdFusion, Ant and Selenium. You know these tools – just think outside-the-box for other uses.

### Learn the CLI (command line)
Learn build in system tools - CTRL+R to search command history, 'man' for finding help on programs (also see TLDR). Also explore additional CLI tools you can download like FZF, ripgrep, TLDR, and more.

### DOS / Shell
Do you restart ColdFusion by clicking through 5 menus to get to the Services panel? Write a simple batch file to do it, and launch it with a AutoHotkey shortcut or through your launcher. With one batch file I can restart ALL my web related services at once (Docker!).

### ColdFusion / CommandBox
ColdFusion (insert every other programming language here)
Facing an odd problem? Don’t forget your favorite programming language! Remember all the things that ColdFusion makes easy: file and image manipulation. Generating PDFs. Zipping files. Don’t forget your favorite language when facing a difficult challenge.
Also remember tools like CommandBox!!

### Cron / Windows Scheduler
Do you fill out a timesheet every day? I do. But I don’t click though 5 menus to open it. I setup an automated cron job that starts the application every weekday at 4:00PM. I also use it to kick off batch scripts that restart my ColdFusion services and update my code from Git every morning before I get to the office.

Check out your computer BIOS to see if you can schedule when your computer powers on/off. You can also script this behavior.

## RESOURCES / LINKS

#### Text Expansion
Espanso https://espanso.org/
AutoHotkey http://www.autohotkey.com

#### Launchers
Find and Run Robot (Win) http://www.donationcoder.com/Software/Mouser/findrun/index.html
Launchy (Win, Mac) http://launchy.net

#### Clipboard Utilities
Ditto (Win) http://ditto-cp.sourceforge.net
CopyQ (Cross platform) https://hluk.github.io/CopyQ/

#### Form Fill
Search in your browser extensions

#### Virtual Desktops
Built in by default – (Spaces – Mac), (Linux)
Dexpot (Win) http://dexpot.de/index.php?id=home

#### Shell / Bash
Aliases https://linuxize.com/post/how-to-create-bash-aliases/
Starship prompt https://starship.rs
fzf https://github.com/junegunn/fzf
ripgrep https://github.com/BurntSushi/ripgrep
fd (find) https://github.com/sharkdp/fd?ref=solarwinter.net
tldr https://tldr.sh

#### Misc
Emmet https://code.visualstudio.com/docs/editor/emmet
Emmet Examples https://docs.emmet.io/actions/
SteerMouse https://www.plentycom.jp/en/steermouse/download.php
