Title: Waterbrick review
Date: 2019-04-20
Slug: waterbrick-review
Status: draft
Tags: waterbrick, prepping, water-storage, taskwarrior

Water is required for life. Without it, in 3 days, you are dead. Before then, dehydration sets in and will make you functionally useless before you snuff it. So it shouldn't need to be said, but having water on hand is probably a very good idea.

Now, in the western world, we literally have fresh, clean potable water on tap. However, incidents happen that could compromise that water supply until a solution is found. In that event, there are contingencies provided by the state to help out, bottled water distribution, tankers in the street etc. But having to depend on that is not ideal, an immediate solution is still a good idea to have on hand.

<!--<img src="/media/images" class=align-center" />-->

I have standardised on [Waterbricks](https://www.waterbrick.org/) for my emergency water storage. Currently have 4 of them, plus the tap, all of which I purchased from [Brownells in the UK](https://www.brownells.co.uk/STACKABLE-WATER-AND-FOOD-STORAGE-CONTAINERS-35-Gallon-Blue-Single-WATERBRICK-100020837).

They are made of HDPE in a nice blue colour, come with a handle for portability and the lid has a gasket to stop leaks. Capacity is approximately 16 litres (3.5 gallons). The waterbricks also stack up nicely and can be palletised for bulk storage and movement. The cuboid shape also leaves less dead space like round containers do. The relatively small volume of them also helps if one becomes compromised and leaks, you don't end up losing your entire store of water, usually just before you need it.

It is a good idea to rotate your water when stored. Opening up a container after 6 years is probably not going to be particularly pleasant. I use [Taskwarrior](https://taskwarrior.org/) to automate reminders to rotate on a yearly basis, with a 6 month offset. The water won't be fantastically fresh or crisp - or particularly cool for that matter - after that time but can be reasonably assumed to be pathogen free.

    $ task add project:waterstorage due:2019-06-01 wait:due-3days recur:yearly Rotate waterbrick alpha
    $ task add project:waterstorage due:2019-06-01 wait:due-3days recur:yearly Rotate waterbrick bravo
    $ task add project:waterstorage due:2019-12-01 wait:due-3days recur:yearly Rotate waterbrick charlie
    $ task add project:waterstorage due:2019-12-01 wait:due-3days recur:yearly Rotate waterbrick delta

Now, while the waterbricks are intended to be used for home storage in my case, the handle also makes them reasonably convenient to lug out to a vehicle for trips to remote locations where a potable water supply is not immediately available.

<!--<video width="720" height="488" controls>
    <source src="/media/video/" type="video/mp4">
    Your browser does not support the video tag.
</video>-->
