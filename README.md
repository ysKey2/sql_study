# SQL Study

### Ruby version
2.3.1

### Setup

```
bundle install --path=vendor/bundle
bundle exec rake db:create
bundle exec rake db:migrate
mysql -uroot sql_study_development < tmp/test.dump
```
