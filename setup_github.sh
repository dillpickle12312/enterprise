#!/bin/bash

# GitHub Repository Setup Script
# Run this script to push your code to a new GitHub repository

echo "🚀 Setting up your Enterprise Dashboard for GitHub and Render deployment"
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Git not initialized. Run 'git init' first."
    exit 1
fi

echo "📝 Please provide your GitHub repository details:"
read -p "GitHub username: " username
read -p "Repository name (e.g., enterprise-dashboard): " repo_name

echo ""
echo "🔗 Setting up remote repository..."

# Add remote origin
git remote remove origin 2>/dev/null || true
git remote add origin "https://github.com/$username/$repo_name.git"

echo "📤 Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ Success! Your code is now on GitHub."
echo ""
echo "🌐 Next steps for Render deployment:"
echo "1. Go to https://render.com"
echo "2. Click 'New +' → 'Web Service'"
echo "3. Connect your GitHub repo: $username/$repo_name"
echo "4. Render will auto-detect the render.yaml config"
echo "5. Click 'Create Web Service'"
echo ""
echo "🔍 Your app will be available at: https://$repo_name.onrender.com"
echo "🏥 Health check: https://$repo_name.onrender.com/health"
echo ""
echo "📋 Repository URL: https://github.com/$username/$repo_name"
