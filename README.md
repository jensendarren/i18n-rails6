# Task 2: Eye Eight Teen En

Lets first get you running: clone the repo, run the Rails server and visit the root page.

**Ok, ready?**
You're tasked with updating the cronut acceptance widget that has been embeded in sites around the world as an iFrame. It's been hugefully successful but lately many users have wanted to use their own **cronuts** and **donuts** URL instead of the default ones used in the checkbox label.

## Requirements

Your task is to allow `cronuts_url` and/or `donuts_url` query string parameters. If either are included in the widget URL (The Rails root URL), the default link it represents should be overwritten with the value supplied.

For example, if I supplied `http://localhost:3000?cronuts_url=https://google.com` then the **cronuts** link in the label below would lead to `https://google.com` instead of the hardcoded default and the **donuts** link would remain unchanged from its default.

While you're at it, lets also make use of Rails i18n for the label text.

## Guidelines

* Your solution must use Rails I18n for the label text
* Use Git and commit as often as you think is necessary to properly tell your story
* Write tests using RSpec proving that your solution works (TDD strongly encouraged)
* Use whatever tools you'd like (gems, patterns, etc)
* Engineer your solution as if there's a high chance it will be re-used in other widgets
* Feel free to create new directories, classes, modules, etc...
* Keep lines wrapped at 120 characters
* Enjoy this odd challenge!


## What we're looking for

* Coding style (tidyness &amp; legibility)
* Abstractions
* Testing practices
* Security awareness
* Commit journey

## How to get started & submit

1. Clone the repo
2. Create a new branch to work from
3. Do your thing
4. When you're done, push your branch and create a PR for the team to review

# Task 2: Solution

Cronut acceptance widget project. To get the application running use `docker-compose` (assumes you already have Docker client running).

```
docker-compose up
```

By default this spins up two running containers: one for the web application and one for the tests running with RSpec Guard.

To open the web application visit [http://localhost:3000](http://localhost:3000).

To run the tests, simply modify any file in the project that is being monitored by Guard (e.g. one of the spec files) and the tests will be run and output in the console via the container that is running Guard.