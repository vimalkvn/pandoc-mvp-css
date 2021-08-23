---
title: Skyrocket Documentation
subtitle: A Static Website Template for Pelican 4
author: Vimalkumar Velayudhan
date: 2020-07-21
website: https://vimalkvn.com/
logo: images/skyrocket.svg
---

## System Requirements

### Python 3 and the venv module
On Ubuntu 20.04, Python 3 is installed by default but you will need to install 
the `venv` module. You can install it using `apt`:
    
    sudo apt install python3-venv

### Git
If you plan to publish this website on GitHub or GitLab, you will need an 
account on these services. In addition, you will need to install Git and 
add your name and email address to Git configuration.

On Ubuntu based systems, you can install git using `apt`:
    
    sudo apt install git
    
---

## Getting Started

### 1. Extract template
You would have extracted the `skyrocket-1.0.zip` file. Within the extracted 
folder, you will find a `template` folder. Copy this folder to a location 
of your choice and rename it if you wish.

### 2. Initialise website
Change into this folder and run the `initweb.sh` script:

    cd template
    bash initweb.sh
    
This will create a Python virtual environment and install required packages 
for the website using `pip`.

### 3. Basic settings
^NOTE^ The following configuration settings are done in **pelicanconf.py**.

Change `AUTHOR`, `SITENAME` and `SITESUBTITLE` settings as appropriate for 
your website:
   
    AUTHOR = 'Astro'
    SITENAME = 'Skyrocket'
    SITESUBTITLE = 'Static Website Template for Pelican'
       
### 4. Update website logo
Copy your website's logo into `content/images` folder and then update 
this setting:

    SITE_LOGO = 'images/your_logo.png'
    
### 5. Update website author
Update author information for your website. 

^NOTE^ The dictionary key in `AUTHORS` must match the value of `AUTHOR` 
setting above:

    AUTHORS = {
    'Astro': {
        'avatar': 'images/author_profile.svg',
        'website': 'https://example.com',
        }
    }
       
### 6. Update social media links
Finally, update links to social media accounts for this website in the 
`SOCIAL` setting:

    SOCIAL = (('Twitter', 'https://twitter.com/'), 
              ('Facebook', 'https://facebook.com/'),
              ('Mastodon', 'https://linuxrocks.online/'))
    
Save `pelicanconf.py`.
   
---
    
## Preview Website
Once you have saved your changes to `pelicanconf.py`, activate the virtual 
environment and use the following command to preview the website:

    source venv/bin/activate
    invoke livereload
   
Open <http://localhost:8000> in a browser. If you add some content — a blog 
post, for example, the website should update automatically.
