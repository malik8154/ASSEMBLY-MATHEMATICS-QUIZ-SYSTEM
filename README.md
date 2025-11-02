# Assembly Mathematics Quiz System

An **interactive quiz game** developed in **Assembly Language (x86, 16-bit)**.  
This program asks the user **10 mathematics questions** and dynamically updates the score based on correct (+1) or incorrect (-1) answers.  
At the end of the game, the final score is displayed.

---

## Features
- 10 predefined mathematics questions
- Options displayed in MCQ format (a, b, c)
- Real-time score tracking
- Final score display at the end
- Built using Assembly for performance and low-level learning
- Beginner-friendly project for learning Assembly Language basics

---

## Tech Stack
- **Language:** Assembly (x86, MASM/TASM/emu8086 syntax)
- **Platform:** DOS (works in emu8086, MASM, TASM, or online compilers like [OneCompiler](https://onecompiler.com/assembly))

---

## Project Structure
```
ASSEMBLY-MATHEMATICS-QUIZ-SYSTEM/
│── assets # screenshot of project
│── quiz.asm # Main assembly source code
│── README.md # Project documentation
│── .gitignore # Ignore unnecessary files
```


---

## How to Run
1. Copy the code from `quiz.asm` into [OneCompiler Assembly](https://onecompiler.com/assembly).
2. OR use **emu8086/MASM/TASM** locally to compile and run.
3. Answer each question by typing the correct option (`a`, `b`, or `c`).
4. After 10 questions, your **final score out of 10** will be displayed.

---

##  Learning Outcomes
- Basics of **Assembly language programming**
- Handling **input/output** using interrupts (`INT 21h`)
- Working with **strings, loops, and conditions**
- Implementing a simple **scoring system** in Assembly

---

##  License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.
