
This is a Hugo tree, and is meant to be built using hugo!

```
     git clone https://github.com/ice-energy/jreed.git
     hugo
```

hugo outputs a directory named public.  Rename that directory
to 'docs'

```
     mv public docs
```

Those 2 steps are included in the shell script **x.sh**, which
automates it all.

I've also found in working with dream-plus theme (maybe it's an
overall hugo thing?) that cover images to posts don't get put in
the correct spot.

**The x.sh shell script fixes up everything**

When it's all built, it needs to be uploaded to github for display.

Now typically I would use a gui to do this, but these lines could
be added to x.sh in order to automatically upload to github:



