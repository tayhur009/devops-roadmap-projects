# Day 3 Project: Git Collaboration & Remote Repos

## 📌 Description
This project demonstrates how to collaborate with Git using remote repositories and multiple branches.  
We simulate a simple workflow where a teammate adds work on a feature branch and merges it into the main branch.

---

## 🚀 Workflow Steps
1. **Initialize repo** → `git init`  
2. **Create main file** → `main.txt`  
3. **Create feature branch** → `git checkout -b feature-branch`  
4. **Add work on feature branch** → `feature.txt`  
5. **Commit changes** → `git add . && git commit -m "message"`  
6. **Switch back & merge** → `git checkout main && git merge feature-branch`  
7. **Push to remote** → `git remote add origin <repo-url>` then `git push -u origin main`  

---

## 📂 Files
- `main.txt` → Main branch file  
- `feature.txt` → Feature branch file  
- `README.md` → Documentation  

---

## 🏆 Key Concepts
- Cloning, pushing, and pulling from remote repos  
- Feature branch workflow  
- Merging code safely  

