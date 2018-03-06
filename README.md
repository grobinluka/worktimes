Created new Rails project named evidence
Created new scaffold "worktime" where all the "todays" worktimes are going to be entered
Edited that "worktime" so only this date @worktimes = Worktime.all.order("datum DESC") and that there will be difference in Admin and Common user views will be different

Added gem 'devise' and added Users, so you can login
Also added gem 'gem 'bootstrap-sass', '~> 3.3.7' and gem 'browser-timezone-rails' which changes timezone to pc/browser time

