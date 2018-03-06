Created new Rails project named evidence, with
```
rails new evidence
```

Created new scaffold "worktime" where all the "todays" worktimes are going to be entered.
```
rails g scaffold Worktime datum:date prihod:time odhod:time work:text ure:integer razlog_odhoda:text odhod_r:time prihod_r:time opombe:text 
```

Edited that worktime controller where output will be date DESC in controller
```
@worktimes = Worktime.all.order("datum DESC")
```

Installed devise, bootstrap (css) and browser timezone which changes timezone to browser time
```
gem 'devise'
gem 'bootstrap-sass', '~> 3.3.7'
gem 'browser-timezone-rails'

bundle install
```

Generated Users and it's views
```
rails g devise user
```
Set priority to login before you have option to do anything
```
  before_action :authenticate_user!
```

On devise sign-up I added 2 new inputs "name" and "lastname" besides that also adding in database "admin" so we can check who admin is, migration code:
```
rails g migration add_name_lastname_admin_to_user name:string lastname:string admin:boolean
```

On profile I displayed all current_user worktimes/all work he had done
```
@worktimes_profile = Worktime.where(user_id: current_user.id).order("datum DESC")
```

If his admin, it also displays all the work people have done with a possibility to edit or delete.
```
if current_user.admin == true
  @worktimes_admin = Worktime.all.order("datum DESC")
end
```

Organized views and links, also added css for a better look!

