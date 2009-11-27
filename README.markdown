SUMMARY
=======

Spree Facebook Connect adds Facebook Connect to Spree allowing the
user to login with their Facebook id and also provide the applicaiton
the ability to leverage viral channel on Facebook to promote and
market the products.

QUICK START
===========

1. Create a spree instance

   $ spree my_fb_shop

2. Create the necessary config/database.yml file

3. Add the following plugins and extensions. I use
[braid](http://wiki.github.com/evilchelu/braid) to manage
extensions/plugins.

The plugins/extensions are from my version of the forks as the
extensions depends on a couple modifications that have not been merged
into the official version.

4. Add Facebooker which is the Ruby library to Facebook platform

   $ ./script/plugin install git://github.com/taweili/facebooker.git

or

   $ braid add -p git://github.com/taweili/facebooker.git

5. Add Authlogic Facebook Connect Extension

   $ ./script/plugin install git://github.com/taweili/authlogic_facebook_connect.git

or

   $ braid add -p git://github.com/taweili/authlogic_facebook_connect.git

6. Add Facebook Connect Extension

   $ ./script/extension install git://github.com/taweili/spree-facebook-connect.git

or

   $ braid add git://github.com/taweili/spree-facebook-connect.git vendor/extensions/facebook_connect

7. Get a Facebook App key and secret at the [Facebook Developer](http://www.facebook.com/developers)

8. Configure the config/facbeooker.yml according to [this tutorial](http://apps.facebook.com/facebooker_tutorial/)

9. Set up the database. This extension adds two fields to User to hold Facebook id and session key.

   $ rake db:migrate

Now, run the app and you should see Facebook Connect button on top of the page next to Login
