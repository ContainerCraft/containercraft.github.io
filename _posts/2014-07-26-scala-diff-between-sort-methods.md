---
layout: post
last-modified: '2014-07-26T12:00:00+05:30'

title: "Difference between sorted, sortWith and sortBy in Scala"
subtitle: "Understand which sort method to use in what situation."
cover_image: general/orange-evening.jpg
cover_image_caption: "Near the Norbulingka Institute, Dharamshala, India"

excerpt: "Scala collections provide you three options for sorting: `sorted()`, `sortWith()` and `sortBy()`. This blog explains the differences."

author:
  name: Gurpreet Luthra
  twitter: _zenx_
  bio: Software Craftsman and Lead Consultant Developer at ThoughtWorks
  image: general/gp-square-v.jpg
---

Scala collections provide you three options for sorting: `sorted()`, `sortWith()` and `sortBy()`. Here is a simplified explanation:

### sorted
Will sort the list using the natural ordering (based on the implicit Ordering passed)

### sortBy (an attribute)
Sort by a given attribute using the attribute's type.
e.g. given a list of `Person` objects, if you want to sort them in ascending order of their age
(which is an `Int`), you could simply say:

{% highlight scala linenos %}

personList.sortBy(_.age)

{% endhighlight %}


### sortWith (a function)
Takes a comparator function. Useful when you want to specify a custom sorting logic.
e.g. if you want to sort by age descending, you could write this as:

{% highlight scala linenos %}

personList.sortWith{(leftE,rightE) =>
     leftE.age > rightE.age
}

{% endhighlight %}

Or, more simply:

{% highlight scala linenos %}

personList.sortWith(_.age > _.age)

{% endhighlight %}

### A full example

{% highlight scala linenos %}

// Sequence of numbers
val xs = Seq(1, 5, 3, 4, 6, 2)

// Sort using Natural ordering as defined for Integers in Scala Library
xs.sorted //1,2,3,4,5,6

// Sort 'with' a comparator function
xs.sortWith(_<_) //1,2,3,4,5,6
xs.sortWith(_>_) //6,5,4,3,2,1
xs.sortWith((left,right) => left > right) //6,5,4,3,2,1

// Create a Person class
case class Person(val name:String, val age:Int)

// Define a list of Persons
val ps = Seq(Person("John", 32), Person("Bruce", 24), Person("Cindy", 33), Person("Sandra", 18))

// Sort People by increasing Age (natural ordering of Int will kick in)
ps.sortBy(_.age) //List(Person(Sandra,18), Person(Bruce,24), Person(John,32), Person(Cindy,33))

// Sort People by decreasing Age, using a comparator function
ps.sortWith(_.age > _.age) //List(Person(Cindy,33), Person(John,32), Person(Bruce,24), Person(Sandra,18))

{% endhighlight %}