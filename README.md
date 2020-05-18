# postCap

postCap is a lightweight Rails application with the intention of allowing users to share their capstone projects or really any significant project they're working on!

### Security Notice:

DO NOT USE YET! postCap is not a matured piece of software and contains known security vulnerabilities. A stable secure release is expected soon.

## The Basics

## System dependencies:

* `ruby2.6.5`
* `nodejs`
* `sqlite3`
* `npm`
* `build-essential`

## Installation && Deployment

To install:

`git clone https://github.com/NerdOfCode/postCap.git && cd postCap/`

To deploy:

`export postCap_port=3000`
`docker-compose up --build -d`

Currently, Docker is the only supported deployment method. Moreover, any further networking configuration is to be down in Docker.
