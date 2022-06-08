Blind-meeting - Backend
===
Our company, every Friday the employees are grouped to have lunch together in order to get to know each other better. The team
has grown a lot in the past months, so it is hard to follow-up with groups, restaurants, etc.
For this reason, we would like you to create a Rails application where we can automate the generation of the groups.
Each group should have a leader that will choose a restaurant. We would like to avoid having same leaders each week.
The groups should be of equal size (+/- 1 person) and employees of the same unit (e.g. HR, IT) should be spread as much as possible in the
different groups.
Every week, new groups are supposed to be different than in the previous weeks.
The app should ask all the employees if they want to go out for lunch. After collecting responses, the groups and leaders should be
generated and notified.
The leaders can choose a restaurant and share it with their group.

## Requirements
The project is based on the version `3.0.0` of ruby language and `7.0.0` of ruby on rails,
so make sure that you are satisfying the requirements
listed in the [rails's documentation](https://guides.rubyonrails.org/v5.0/getting_started.html#installing-rails)

## Installation
Run the following commands in order to get a ready to use clone of the application:

1. Clone the repository
```bash
git clone https://github.com/OmarSoliman15/blind-meeting
```
2. Get into the directory
```bash
cd blind-meeting
```
### Start The Server
3. Create your database and setup configuration
```bash
rails db:create
rails db:migrate
rails db:seed
```
#### And now we're done !!

### Open The Server
```bash
http://127.0.0.1:3000
```