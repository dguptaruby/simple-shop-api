# Simple Shop - API

Setup the application

	- Clone the application

	- bundle install 

	- rake db:setup (to create, migrate and seed the data)

	- rails server (to start the server)

	Note: when we seed the data we will get products,users and regions.

Api Docs

  Users

    - Login to api to get the token

	    - Post /login with email and password to get the token
		     - Request
		       curl --request POST 'localhost:3000/login?email=admin@yopmail.com&password=admin' 

		     - Response
		       {
					    "user": {
					        "id": 17,
					        "email": "admin@yopmail.com",
					        "password_digest": "$2a$12$45les5tfoSOqHK5zahTKEucsNabgFlVE1M3fDzQWcT2HVhbWG4pn.",
					        "is_admin": true,
					        "created_at": "2021-10-12T10:13:02.044Z",
					        "updated_at": "2021-10-12T10:13:02.044Z"
					    },
					    "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxN30.Z3-5qgLuXBlLn1oFIae4p0o946_GNR23sA3pLjjfLaQ"
		       }
		  
     
    - To check login user  
    
      - Get /auto_login with token
        - Request 
          curl --location --request GET 'localhost:3000/auto_login' \
          --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxN30.Z3-5qgLuXBlLn1oFIae4p0o946_GNR23sA3pLjjfLaQ' \

        - Response
          {
				    "id": 17,
				    "email": "admin@yopmail.com",
				    "password_digest": "$2a$12$45les5tfoSOqHK5zahTKEucsNabgFlVE1M3fDzQWcT2HVhbWG4pn.",
				    "is_admin": true,
				    "created_at": "2021-10-12T10:13:02.044Z",
				    "updated_at": "2021-10-12T10:13:02.044Z"
          }


    - CRUD for orders     
      - GET /orders to get all the orders
        - Request
          curl --location --request GET 'localhost:3000/orders' \
          --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxN30.Z3-5qgLuXBlLn1oFIae4p0o946_GNR23sA3pLjjfLaQ' \

        - Response
          [
				    {
				        "id": 25,
				        "customer_name": "test",
				        "shipping_address": "san jose",
				        "order_total": 100.0,
				        "paid_at": "2020-12-12T00:00:00.000Z",
				        "created_at": "2021-10-12T10:49:03.227Z",
				        "updated_at": "2021-10-12T10:49:03.227Z"
				    },
          ]

      - POST /order to create the orders
        - Request 
          curl --location --request POST 'localhost:3000/orders' \
					--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxN30.Z3-5qgLuXBlLn1oFIae4p0o946_GNR23sA3pLjjfLaQ' \
					--form 'order[customer_name]="test"' \
					--form 'order[shipping_address]="san jose"' \
					--form 'order[order_total]="100"' \
					--form 'order[paid_at]="12/12/2020"' \
					--form 'product_id="1"'   
			  - Response
			    {
				    "id": 32,
				    "customer_name": "test",
				    "shipping_address": "san jose",
				    "order_total": 100.0,
				    "paid_at": "2020-12-12T00:00:00.000Z",
				    "created_at": "2021-10-12T11:22:29.639Z",
				    "updated_at": "2021-10-12T11:22:29.639Z"
					}		

			 - DELETE /order/order_id to delete order
			   - Request 
			     curl --location --request DELETE 'localhost:3000/orders/25' \
           --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxN30.Z3-5qgLuXBlLn1oFIae4p0o946_GNR23sA3pLjjfLaQ' \	
         - Response 
           {
				    "id": 25,
				    "customer_name": "test",
				    "shipping_address": "san jose",
				    "order_total": 100.0,
				    "paid_at": "2020-12-12T00:00:00.000Z",
				    "created_at": "2021-10-12T10:49:03.227Z",
				    "updated_at": "2021-10-12T10:49:03.227Z"
						} 	
			 - PATCH /order/26
			   - Request
			     curl --location --request PATCH 'localhost:3000/orders/26' \
           --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxN30.Z3-5qgLuXBlLn1oFIae4p0o946_GNR23sA3pLjjfLaQ' \	
         - Response
           {
				    "id": 26,
				    "customer_name": "test updated",
				    "shipping_address": "san jose",
				    "order_total": 100.0,
				    "paid_at": "2020-12-12T00:00:00.000Z",
				    "created_at": "2021-10-12T10:50:16.806Z",
				    "updated_at": "2021-10-12T11:26:55.075Z"
           }
             		





