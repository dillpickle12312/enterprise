# Render Deployment Guide

## Quick Deployment Steps

### 1. Create GitHub Repository
```bash
# Your code is already committed locally
# Now create a new repository on GitHub and push:

git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
git branch -M main
git push -u origin main
```

### 2. Deploy to Render
1. Go to [Render.com](https://render.com) and sign up/login
2. Click "New +" and select "Web Service"
3. Connect your GitHub repository
4. Render will automatically detect the `render.yaml` file
5. Click "Create Web Service"

### 3. Alternative Manual Setup on Render
If auto-detection doesn't work:
- **Build Command**: `pip install -r requirements.txt`
- **Start Command**: `gunicorn --bind 0.0.0.0:$PORT app:app`
- **Environment**: Python 3.11.0

## Your App Configuration

✅ **Flask App**: Ready with proper port configuration
✅ **Requirements**: All dependencies listed in requirements.txt
✅ **Runtime**: Python 3.11.0 specified in runtime.txt
✅ **Render Config**: Configured in render.yaml with gunicorn
✅ **Health Check**: Available at `/health` endpoint
✅ **Git Ready**: All files committed and ready to push

## Troubleshooting

### If deployment fails:
1. Check Render deployment logs
2. Verify all template files exist in `templates/` folder
3. Ensure `requirements.txt` has all dependencies
4. Check that `render.yaml` configuration is correct

### Environment Variables
Your app uses the `PORT` environment variable, which Render provides automatically.

## Next Steps
1. Push to GitHub
2. Deploy on Render
3. Access your live app at the Render URL
4. Test the health endpoint: `https://your-app.onrender.com/health`
