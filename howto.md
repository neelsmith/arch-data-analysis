
Publish course web site:

Within `ghpages` directory:

    jekyll build
    rsync -avz _site/ nsmith@shot.holycross.edu:html/courses/ada/S20


Slides with fusuma:

Individual slideshows are subdirectories within `fusuma`

Within each slideshow subdir,  one-time install:


    npm i fusuma -D

Then, anytime,

    npx fusuma start