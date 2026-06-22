# Fund Manager Workspace

A lightweight investor relationship management (IRM) application built with Ruby on Rails.

## Overview

Fund Manager Workspace helps fund managers track investor conversations, commitments, and fundraising progress through a simple dashboard and investor management workflow.

The application provides:

* Investor tracking
* Commitment management
* Fundraising pipeline visibility
* Dashboard metrics
* Investor editing and status updates

## Features

### Dashboard

* Total Investors
* Committed Investors
* Committed Capital
* Pipeline Capital

### Investor Management

* Create investors
* Edit investors
* Validation handling
* Status tracking
* Next action tracking
* Show investor details on dedicated page

### User Experience

* Inline validation feedback
* Dirty-form detection
* Disabled save button when no changes are present
* Success notifications
* Highlight recently updated investors

## Tech Stack

* Ruby on Rails 8
* SQLite
* Stimulus
* Tailwind CSS
* GitHub Actions
* Render

## Running Locally

```bash
git clone <repository-url>
cd fund-manager-workspace

bundle install
bin/rails db:create
bin/rails db:migrate

bin/dev
```

Visit:

http://localhost:3000

## Deployment

The application is deployed on Render.

Live Demo:

https://fund-manager-workspace.onrender.com

## Future Improvements

* PostgreSQL support
* Investor notes
* Filtering and search
* Authentication
* CSV import/export

## Author

Built by daza and chatGpt as a Ruby on Rails learning project.
