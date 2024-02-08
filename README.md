
(You can test this on postman after running rails server)
1. create new user:

Method: POST
URL: http://localhost:3000/users
Body (raw JSON):

{
  "user": {
    "username": "username1",
    "email": "username1@example.com",
    "password": "password123"
  }
}

2. Login:

Method: POST
URL: http://localhost:3000/login
Body (raw JSON):

{
  "email": "username1@example.com",
  "password": "password123"
}

3. Logout:

Method: DELETE
URL: http://localhost:3000/logout

4. List Posts (accessible only to logged-in users):

Method: GET
URL: http://localhost:3000/posts

I have added the postman collection for your refernce!!