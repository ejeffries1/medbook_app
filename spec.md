# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app: The Controllers inherit from Sinatra:base 
- [x] Use ActiveRecord for storing information in a database: Both Database tables use Activerecord Migration
- [x] Include more than one model class: This app uses two model classes, User and Medication
- [x] Include at least one has_many relationship on your User model: User has_many Medications
- [x] Include at least one belongs_to relationship on another model: Medications belong_to User
- [x] Include user accounts with unique login attribute: Account uses username and password attributes
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying: Medications has routes for CRUD
- [x] Ensure that users can't modify content created by other users: This app is for one user to keep track of medications
- [x] Include user input validations: Bcrypt is used for password validation
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [ ] You have a large number of small Git commits
- [ ] Your commit messages are meaningful
- [ ] You made the changes in a commit that relate to the commit message
- [ ] You don't include changes in a commit that aren't related to the commit message