# GitHub Green Grid Automation

Rozana automatic commit jo GitHub contribution graph ko green rakhta hai.

## Setup (5 minute)

### Step 1: GitHub par naya repo banao

1. [github.com/new](https://github.com/new) kholo
2. Repository name: `github-green-grid` (ya koi bhi naam)
3. **Public** select karo (free Actions ke liye)
4. **Add a README** mat check karo — hum khud files push karenge
5. **Create repository** click karo

### Step 2: Is folder ko GitHub par push karo

PowerShell mein ye commands chalao (apna GitHub username lagao):

```powershell
cd "C:\Users\HP\.cursor\projects\C-Users-HP-AppData-Local-Temp-e0c8a32b-ce40-4660-9b69-836ff27ebdf7\github-green-grid"

git init
git add .
git commit -m "Add daily contribution automation"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/github-green-grid.git
git push -u origin main
```

`YOUR_USERNAME` ki jagah apna GitHub username likho.

### Step 3: GitHub Actions enable karo

Push ke baad workflow automatically chalega. Check karo:

1. Repo → **Actions** tab
2. **Daily Contribution** workflow dikhna chahiye
3. Pehli run manually test karne ke liye: **Run workflow** → **Run workflow**

### Step 4: Email verify karo (zaroori!)

Contributions tab mein count hone ke liye commit email GitHub account se match honi chahiye:

1. GitHub → **Settings** → **Emails**
2. `siddique.dev14@gmail.com` verified ho
3. **Settings** → **Profile** → **Contributions** → "Include private contributions" on rakho (agar private repo use karo)

## Kaise kaam karta hai

Har roz subah 6:00 AM (Pakistan time) GitHub Actions:

1. `contributions/log.txt` mein aaj ki date add karta hai
2. Commit + push karta hai
3. GitHub graph mein green square dikhta hai

## Manual test

Actions tab se **Run workflow** dabao — 1-2 minute baad green square aana chahiye.

## Important notes

- Sirf **apne repo** par commits count hoti hain
- **Fork** par commits count nahi hoti
- Graph update hone mein **5-15 minute** lag sakte hain
- Fake commits GitHub ToS ke against ho sakti hain — ye sirf learning/demo ke liye hai
