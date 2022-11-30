# Contentful Automated Export Tool
Simple combination of scripts to run automated exports of your Contentful headless CMS environments. You can schedule the .sh script to run on whatever frequence you prefer, and it will make a full export of all environments you have available in your Contentful Space. Bash script needs to run on a Linux system. 

## Prerequisites
* Contentful CLI installed on system executing the script: https://www.contentful.com/developers/docs/tutorials/cli/
* Personal Access Token from your Contentful account
* Space ID

## Instructions
### Installing the CLI
First, you need to install the CLI for your system: https://www.contentful.com/developers/docs/tutorials/cli/. I used Linux, and installed the CLI using NPM. Once you've installed the CLI, make a configuration file, or go through the login steps in terminal and set the space ID you want to use. 

### Configuring the python and bash script
In Contentful, configure your personal access token. You're going to enter that token in the python file. The python file works with the Content Management API (https://www.contentful.com/developers/docs/references/content-management-api/), so you will need your access token in order to make that work. You can also use the API or look into your account to get the Space ID. Your Space ID, is what you're going to place into your bash script on line 11 and in your Python script on line , in the CLI command that will export your space. 


### Executing the script
You can either execute the script manually, or you can set up a cron job or some other type of scheduler to run back-ups. 

## How does it work?
The shell script will first execute the Python program. With the Content Management API, all environments
