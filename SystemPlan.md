# System Plan
## I. Purpose of the system
The goal of the system is to create online questionnaire that could easily accessible from browser or mobile device. The main purpose of a questionnaire is to extract data from the respondents. 

For the sake of the user experience, it is important to be able to give simple interface and clear questions. Each question block should appear in a visible way, separate from either your computer or mobile device. The website will be compatible with most browsers, this means its operation and display

It’s a relatively inexpensive, quick, and efficient way of collecting large amount data even when the researcher isn’t present to collect those responses first hand.
Every questionnaire is anonymous, it is a guarantee of confidentiality and privacy. 

## II. Project plan

Developers participating in the project:
* Ajri Sylhasi
* Ankita
* Gabriel Agbese
* Samat Nazarbaev
* Skander Mahfoudh.

The weekly breakdown of the project parts is shown in the table below:

| Function    |  Description      |     Grouping        |Priority | Deadline |Estimation |Elapsed time|Remaining time|
| ----------- |  -------|-------|------|-----|----|----|------|
| Requirement specification    | 10-20 rows per head| Documentation|  Low|11.1.2021|4| 7| 0|     
|Functional specification |10-20 rows per head|Documentation|Low|11.8.2021|8|7|0|
|System plan|40-80 rows per head + Figure 1-2 |Documentation|Medium|11.15.2021|8|7|0|
|Development|100-200 lines per person |Development|Hight|11.22.2021|12|7|0|
|Testing|10-20 test steps per person + documentation of these |Development|Hight|12.29.2021  |12|7|0|
|Evaluation| | |  |


## III. Business process model

1. A University of Debrecen asked us to create a questionnaire for students: to gain data is they are satisfied by university, is it easy to find internship, etc.
2. We will do the software with the developers for several weeks, with documentation, concluding the necessary contracts and in the meantime we will communicate with the customer periodically.
3. If the software suits both the tester users and the developers, we will eventually publishbr published on live servers.

## IV. Requirements
**General System Requirements:**

- Any user can utilize the app and answer any questionnaire.
- Web page accessible from both computer and mobile devices.
- A database is created to store questionnaires, submissions..etc 
- Elements are carried out by JavaScript

**Interface Requirements:**

- A clean and simple user interface
- Buttons are well placed and adjusted around the page
- Extra useful buttons (Reset, Login..) available
- Page is responsive on mobile devices
- Very little use of appealing colors in the questionnaires
- An email field is required so users can finalize their submission

**Functional Requirements:**

- User should be able to easily navigate and answer questions
- Necessary types of questions are:
  - Open Text field
  - Multiple choice dropdown
  - Single choice dropdown
- Admins have an administration  page to manage everything

## V.Functional Design:
- System participants:
  - Page admins
  - Testers
  - Normal users

- Access rights in the system:
  - Admins:
    - Full access to all parts of the aapp.
    - Able to view it as a normal user (and Preview changes).
    - Make changes to database and functions.
    - Change layout and design.
    - Manage submissions (answers).
    - Access to a full record of submissions with assigned emails.

  - Testers:
    - Access a preview version of the web page.
    - Pick questionnaires and answer questions normally.
    - No additional access to admins' pages.

  - Normal users:
    - Normally access the index of questionnaires then other sub pages.
    - Answer questionnaires and navigate all fields of questions.
    - Finilize submissions by enterting their email.

## VI.Physical environment:
- The Website is designed for the web.
- the Website will run on all accepted browsers(e.g. chrome, firefox, safari, etc)
- Development software:
  * Ruby On Rails
  * SQLite 3
  * VSCode
  * Trello
  * GitHub
## VIII. Architectural plan

HTML displays the buttons and labels, and general interface.
CSS is used to style the site to make it look similar to the interface of a physical calcultor
SCSS is used to streamline the CSS
Javascript for functionality.
Ruby on Rails as the framework

## IX. Database plan

No database is required for the program as it performs calculations in real time, and does not store any user data.

## X. Test plan

* Test cases:
    1. Test of division by 0
    2. Testing of non numerical, or operation symbol input
    3. Appearance testing

## XI. Installation plan

No Isntallation is required by the user as it is browser based.

* Server side system plan:
    * Rent a web server
    * FTP access
        

## XII. Maintenance plan

Maintanance will only be necessary with the need of additional operations requested by the users.

Means of update:
* FTP
* SSH

In case of updating, it is necessary to perform:
* Update the file on the server
* Update documentation
* Reruns tests
* Document test results


