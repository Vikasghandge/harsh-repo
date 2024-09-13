from flask import Flask, render_template, request

app = Flask(__name__)

todos = []

@app.route('/')
def index():
    return render_template('index.html', todos=todos)

@app.route('/add', methods=['POST'])
def add_todo():
    todo = request.form['todo']
    todos.append(todo)
    return index()

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

