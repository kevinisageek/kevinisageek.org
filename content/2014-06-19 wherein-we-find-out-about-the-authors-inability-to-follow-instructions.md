Title: Wherein we find out about the author's inability to follow instructions
Date: 2014-06-19 21:56
Author: kevin
Category: Uncategorized
Tags: clojure, fail, programming
Slug: wherein-we-find-out-about-the-authors-inability-to-follow-instructions

So I've been thinking that I really should learn Lisp. A nice
programming language unlike any other I have seen.
[Clojure](http://clojure.org/) is one dialect of Lisp which is targeted
at the JVM and .NET CLR. A quick search of the Youtubes revealed [a
decent video introducing Clojure with a practical
example](https://www.youtube.com/watch?v=VVd4ow-ZcX0) and a quick touch
on [Leningen](http://leiningen.org/).

I started going along with the video a couple days ago when I hit a
snag. Errors about not finding files, no such namespace etc. The
versions of the libraries I was using were quite old, was that the
issue? Has the syntax changed?. The answer is a lot more depressing.

`(defroutes (GET "/" request (homepage request)) (GET "/:id" [id] (redirect id)))`

Can you see the issue? I coudn't.

`(defroutes myroutes (GET "/" request (homepage request)) (GET "/:id" [id] (redirect id)))`

I missed a single argument from (defroutes). Literally could have put
any old ascii string in there and it would have worked.

2.

Sodding.

Days.

Remember kids, when copying code from a video, make sure to get it all.
