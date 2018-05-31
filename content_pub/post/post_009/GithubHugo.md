---
title:  "Github Plus Hugo"
date:   2018-05-31T12:19:00
tags:
- github
categories:
- Systems/Solutions
description : "A Hugo Repository stored in github, can be used as a Static Website"
draft: false
cover: "/jreed/img/cover_githubhugo.jpg"
menu: main

---

![pic1](../img/cover_githubhugo.jpg)

---

*Hugo* is an open-source static website generator.   It has many themes and many layouts
ready to choose from.   **Content** in *Hugo* consists of posts that you add
using markdown format, and the posts are arranged in a logical directory tree structure.
See the Hugo site here: [Hugo Website](https://gohugo.io).

I put together 3 Hugo sites, using the same set of post files.   Have a quick look:

 - [ice-energy.github.io/jreed](https://ice-energy.github.io/jreed)
 - [ice-energy.github.io/user1](https://ice-energy.github.io/user1)
 - [ice-energy.github.io/user9](https://ice-energy.github.io/user9)

3 questions you probably have after looking at that:

 1.  We have a github account?
 2.  Holy Cow, how'd you do that?
 3.  How do you keep documents private?



# We have a github account?

Yeah, github accounts are free.  Pick a username and go.
For the *free deal*, all your repositories are public.

For $99/year, repositories can be made private.


# How'd you do that?

While Github is known as a source code repository, it is also something else:

> If the repository you are storing ALSO happens to be a Static Website,
  Github can serve up pages from the site.

**Chew on that a good long time**

```
IF( uploaded_code === properly_formatted_webite() ) THEN

    Serve_Up_Webpages(siteURL)

END
```

With proper configuration of the github repository, and proper layout
of the data you are storing there, **github can serve up the pages**.

With Hugo installed here's the process I use for creating that website:

   - edit content
   - Run Hugo from within a shell script, fix some things up  (all automated)
   - use git to check-in all your changes
   - use git to push to github
   - wait a bit for changes to show up
   - browse to site



# How do you keep documents private?

1st of all, pay the $99 fee.   That means the repositories are private, but the
pages are not.    Pages can still be seen.

I have a solution to this, and it's mainly built into the source code tree.

See the repositories at:

 - [github.com/ice-energy/jreed](https://github.com/ice-energy/jreed)
 - [github.com/ice-energy/user1](https://github.com/ice-energy/user1)
 - [github.com/ice-energy/user9](https://github.com/ice-energy/user9)

There are 2 content directories:

 - content_pub
 - content_priv

*content_pub* is meant to have its pages publicly viewed.   The output of
*Hugo* is the *docs* directory.

    *docs* is the directory that github looks for to display pages.

*content_priv* is meant to be private.   The output of Hugo for the priv
files is the *docs_priv* directory.  github will ignore this directory.

> OK here's the deal:  *docs_priv* is it's own static site of private
  docs.   It's ultimately meant to be hosted on an Ice-Energy internal
  website.   I need help from Software and IT to do that.































