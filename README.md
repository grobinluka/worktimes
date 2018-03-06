Created new Rails project named evidence, with
```
rails new evidence
```

Created new scaffold "worktime" where all the "todays" worktimes are going to be entered.

Edited that worktime controller where output will be date DESC.
```
date @worktimes = Worktime.all.order("datum DESC")
```

Added gem 'devise' and added Users, so you can login.

Also added gem 'bootstrap-sass', '~> 3.3.7' and gem 'browser-timezone-rails' which changes timezone to pc/browser time.

Profile displayed profile information and all of work time posts a current_user had.
```
@worktimes_profile = Worktime.where(user_id: current_user.id).order("datum DESC")
    if current_user.admin == true
      @worktimes_admin = Worktime.all.order("datum DESC")
    end
```

If his admin, it also displays all other users posts where you can delete and edit them.

Also added some bootstrap css lines for a better look!
