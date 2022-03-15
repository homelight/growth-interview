# growth-interview

This are the instructions for the home assignment to be done in order to join the Growth team @homelight. The challenge is to build a simple ruby on rails app with a react frontend. The requirements are the following: 

User stories: 

- As a user I should be able to fetch a **paginated** list of **public** gists from github.
  - The list should show the description, created_at date, amount of comments, description, and amount of files that the gist has
  - It should link to the actual gist on github
- As a user I should be able to sort the list by the created_at date. (This sort should happen only in the frontend for the currently loaded gists) 
- As a user I should be able to search a gist from the list by it's description. The list should update as the user types. (This search should happen on the frontend for the currently loaded gists)
- As a user I should be able to **star** a gists from the list and get a notification of the success or failure of the operation. When the gist is successfully star the app should track the amount of stars that a gist has receive from users of the app.
- The list should show the amount of stars that a gists has. (this metric comes from the app DB not from the github API)

Notes: 

- You can style the app however you want with or without css frameworks.
- You are free to architecture the app and use any gems that you want. The only hard requirement is that the app uses rails in the backend and react on the frontend
- We will look for things like performance, tests, code organization and quality. 

Instructions: 

1. Fork this Repo and build your solution there.
2. Once you have the solution ready send us an email with the link to your forked repo.
3. We will get back to you with feedback. 