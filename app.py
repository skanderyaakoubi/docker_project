from flask import Flask

app=Flask(__name__) # type: ignore


@app.route("/")
def home():
    return "hello word!"

if __name__=="__main__" :
    app.run(host="0.0.0.0",port=5000)