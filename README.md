# Enterprise Physical Activity Dashboard

A Flask web application that displays physical activity and screen time trends for young people.

## Features

- Dashboard with activity analytics
- Survey functionality
- Health and wellbeing information
- Responsive web design

## Deployment on Render

This application is configured to deploy automatically on Render. The configuration is defined in `render.yaml`.

### Quick Deploy to Render

1. Fork this repository to your GitHub account
2. Connect your GitHub account to Render
3. Create a new Web Service on Render
4. Connect your forked repository
5. Render will automatically detect the `render.yaml` and deploy your app

### Manual Configuration

If you prefer manual setup:

1. **Build Command**: `pip install -r requirements.txt`
2. **Start Command**: `gunicorn --bind 0.0.0.0:$PORT app:app`
3. **Environment**: Python 3
4. **Plan**: Free

## Local Development

1. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

2. Run the application:
   ```bash
   python app.py
   ```

3. Open your browser to `http://localhost:10000`

## Health Check

The application includes a health check endpoint at `/health` that returns the application status.

## File Structure

```
├── app.py              # Main Flask application
├── requirements.txt    # Python dependencies
├── runtime.txt        # Python version specification
├── render.yaml        # Render deployment configuration
├── Procfile           # Process file for deployment
├── templates/         # HTML templates
│   ├── base.html
│   ├── index.html
│   ├── about.html
│   ├── dashboard.html
│   └── survey.html
└── static/           # Static files (CSS, images)
    ├── style.css
    └── images/
```

## Technology Stack

- **Backend**: Flask (Python)
- **Frontend**: HTML, CSS, JavaScript
- **Production Server**: Gunicorn
- **Deployment**: Render
