Career Suggestion System — Prolog Expert System

Ever stared at a blank screen wondering "What career should I even be pursuing?" This little Prolog project tries to help with that. It's a simple but surprisingly fun expert system that takes in a few things about you — your interests, your skill level, your work style — and suggests careers that might actually fit.
Built as part of my exploration into logic programming, this project uses Prolog's natural strength (pattern matching and rule-based reasoning) to do something genuinely useful.

What It Does
You answer a few questions. It thinks. It recommends careers. No machine learning, no black box — just clean Prolog logic that you can read, understand, and tweak yourself.

Interactive menu — walks you through the inputs step by step
Input validation — won't let you break it with weird inputs
Multiple suggestions — gives you more than one option, because people are complex
Fully transparent logic — every recommendation traces back to a rule you can see


The Logic Behind It
It's not magic, just Prolog doing what Prolog does best.
The system has a career database (facts) and a set of matching rules that connect user inputs to career paths. When you say you're into coding, have high skill, and prefer analytical work — the rules fire, and out come your matches.
No weights, no probabilities. Just logic. Refreshingly straightforward.

Built With

SWI-Prolog — the go-to Prolog environment for anything practical
Visual Studio Code — because writing Prolog in a good editor actually matters


Running It Yourself
You'll need SWI-Prolog installed. Once you have it:
bash# Open the SWI-Prolog interpreter
swipl

# Load the career system
?- consult('career.pl').

# Launch the menu
?- menu.
```

That's it. The menu will guide you from there.

---

Quick Example
```
Interest:     coding
Skill Level:  high
Work Style:   analytical
```
```
✔ Suggested Careers:
  → software_engineer
  → data_scientist
```

---

 Project Structure
```
career-system/
│
├── career.pl       ← All the Prolog magic lives here
├── README.md       ← You're reading it
└── report.pdf      ← Detailed writeup

Where This Could Go
This is a starting point, not a finished product. Some ideas I'd love to add eventually:

A GUI so non-Prolog people can use it comfortably
A ranking system to prioritize the best-fit careers
A much bigger career database covering more interests and niches


Done by
Aarush Sudheer — curious about logic programming, expert systems, and building things that actually reason.
