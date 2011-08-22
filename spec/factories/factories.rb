Factory.define :user do |user|
  user.name                  "Foo Bar"
  user.email                 "foo@bar.com"
  user.password              "foobar"
  user.password_confirmation "foobar"
end