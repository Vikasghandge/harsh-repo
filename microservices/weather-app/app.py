from flask import Flask, render_template, request
import requests

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/weather', methods=['POST'])
def get_weather():
    city = request.form['city']
    api_key = 'YOUR_API_KEY'
    url = f'http://api.openweathermap.org/data/2.5/weather?q={city}&appid={api_key}&units=metric'
    response = requests.get(url).json()
    weather = {
        'city': city,
        'temperature': response['main']['temp'],
        'description': response['weather'][0]['description']
    }
    return render_template('index.html', weather=weather)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

