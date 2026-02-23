from flask  import *
import pymysql
import os

app=Flask(__name__)
app.config["UPLOAD_FOLDER"]="static/images"

@app.route("/api/signup",methods=["POST"])
def signup():
    # code to execute
    username= request.form['username']
    email = request.form['email']
    phone = request.form['phone']
    password= request.form['password']

    print(username,email,phone,password)
    # create db connection
    connection = pymysql.connect(host="localhost",user="root",password="",database="josphat_sokogarden")

    # create cursor
    cursor= connection.cursor()

    # create sql query
    sql = "insert into users (username,email,phone,password) values(%s,%s,%s,%s)"
    data = (username,email,phone,password)
    # execute query
    cursor.execute(sql, data)
    # save the data
    connection.commit()
    # return response
    return jsonify({"message":"sign up api"})

@app.route("/api/signin",methods=["POST"])
def signin():
    email=request.form["email"]
    password=request.form["password"]
    print(email,password)
    # create db connection
    connection=pymysql.connect(host="localhost",user="root",password="",database="josphat_sokogarden")

    # create a cursor
    cursor=connection.cursor(pymysql.cursors.DictCursor)

    sql="select user_id,username,email,phone from users where email=%s and password=%s"

    data=(email,password)
    cursor.execute(sql,data)

    if cursor.rowcount==0:
        return jsonify({"message":"invalid credential"})
    else:
        # get user data
        user=cursor.fetchone()
        return jsonify({"message":"log in successful","user":user})

@app.route("/api/add_product",methods=["POST"])
def addproduct():
    product_name = request.form["product_name"]
    product_description= request.form["product_description"]
    product_category= request.form["product_category"]
    product_cost= request.form["product_cost"]
    product_image=request.files["product_image"]


    print(product_name,product_description,product_category,product_cost,product_image)
    # get image name
    image_name=product_image.filename
    print(image_name)

    # save images to the images folder
    file_path=os.path.join(app.config["UPLOAD_FOLDER"], image_name)
    print(file_path)
    product_image.save(file_path)

    # create a connection to the database
    connection=pymysql.connect(host="localhost",user="root",password="",database="josphat_sokogarden")

    cursor= connection.cursor()

    sql="insert into product_details(product_name, product_description, product_category, product_cost, product_image) values (%s,%s,%s,%s,%s)"
    # data to execute
    data=(product_name,product_description,product_category,product_cost, image_name)
    # execute query
    cursor.execute(sql,data)
    # save the data
    connection.commit()

    return jsonify({"message":"product added successfully"})

@app.route("/api/get_products")    
def getproducts():
    connection=pymysql.connect(host="localhost",user="root",password="",database="josphat_sokogarden")
    cursor=connection.cursor(pymysql.cursors.DictCursor)
    sql="select * from product_details"
    cursor.execute(sql)
    if cursor.rowcount==0:
        return jsonify({"message":"Out of stock"})
    else:
        # fetch products
        products= cursor.fetchall()
        return jsonify(products)



if __name__=="__main__":
    app.run(debug=True)