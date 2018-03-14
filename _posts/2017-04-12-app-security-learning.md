---
layout: post
last-modified: '2017-04-12T12:00:00+05:30'

title: "12 Things I Learnt While Teaching Application Security"
subtitle: "Fascinating stuff I stumbled upon while preparing for security training"
cover_image: general/turkey-ocean-1.jpg
cover_image_caption: "Turkey"
og-image: "general/turkey-ocean-1.jpg"

excerpt: "In this blog I share some fascinating learnings and resources I stumbled upon while being a trainer for Application Security 101 at ThoughtWorks."

author:
  name: Gurpreet Luthra
  twitter: _zenx_
  bio: Software Craftsman and Lead Consultant Developer at ThoughtWorks
  image: general/gp-square-v.jpg
---

## Introduction

ThoughtWorks runs an Application Security 101 training for people not very familiar with common security topics. The training curriculum covers topics like Threat Modelling, Same Origin Policy, CSRF, Secret Management, Library Vulnerabilities, STRIDE among many others. 

I was a trainer for one of the recent batches in ThoughtWorks Pune, and in researching some of these topics, I came across many interesting links, videos and information. I decided to write a blog outlining them as a reference for my 'students'. I hope that my technologist friends out there will also find this information fascinating. 

## Topic 1: Continuous Authentication / Typing pattern detection

Technology now exists that can detect if the person who is typing on the keyboard is actually YOU or someone else. It is marketed as Continuous Authentication -- where the system is continously checking if the person using the system or the website is the one who is an authorized user, or is someone else impersonating the user. See demos here: 

1. [KeyTrac online demo](https://www.keytrac.net/en/tryout/authenticate)
2. [TypingDNA online demo](http://typingdna.com/demo-api.html) ([YouTube Video](https://www.youtube.com/watch?v=yH2CqAiY4KA))
3. [BehavioSec](https://www.behaviosec.com/features/#how-it-works): Uses keyboard and touch gestures to identify you!


## Topic 2: How NOT to store passwords

In this video [How not to store passwords](https://www.youtube.com/watch?v=8ZtInClXe1Q), Tom Scott (Computerphile) explains how websites and application might incorrectly store passwords. And no, encryption isn't a good idea. He explains how [hashing](https://www.youtube.com/watch?v=b4b8ktEV4Bg) with a random salt is the way to go as far as password storage is concerned. 

## Topic 3: Has my email ID been leaked?

Go to this link [Have I been Pwned?](https://haveibeenpwned.com/) to check if any of your Email IDs, and associated credentials, have ever leaked on the internet. If so, it tells you which source got compromised (Adobe, LinkedIn, etc) and what information got leaked. So, for instance if your email id and credentials have been leaked, then you better not only change your password for the compromised website, but you should also change your password in EACH AND EVERY account where you re-used the same password! 

This is why you should not ever re-use passwords across applications, websites and services. Instead, use a strong password manager and generator like [KeePassX](https://github.com/keepassx/keepassx) or [1Password](https://1password.com/).

## Topic 4: Creating strong passwords & Dice-Ware

A strong password is one that is very difficult to predict, and cannot easily be brute forced. See this website for examples of extremely strong passwords: [Password Creator](https://passwordcreator.org/#amazing). The good thing about this website is that it runs *fully in your browser* (so you can go offline and then ask it to generate password recommendations). 

Whenever you use an ONLINE Password CHECKER, or GENERATOR you run the risk of actually *leaking* your password to the internet. That is why you would want to use OFFLINE tools to generate your passwords, and most good password managers are a safe bet.

[Diceware](http://world.std.com/~reinhold/diceware.html) passwords are a simple and strong option for creating your passwords. An example of a diceware password is: "edwin curse clue bose axes bandy". The idea of diceware was to: 

1. Provide very strong passwords. 
2. Make it easy to type on a phone (no capitals, no special characters, etc).
3. Make it easy to remember.

You randomly choose five or six (or more) words from a list of 7500+ pre-defined word list. Selecting words from the list is done by throwing a dice a pre-defined number of times per word. Read more about what makes Diceware so strong here: [If someone knows that I am using Diceware, can't they just use the word list to search for my passphrase?](http://world.std.com/~reinhold/dicewarefaq.html#someoneknows)

## Topic 5: Creating Fake Webpages for Phishing Attacks

There are many easy-to-use tools available that allow you to create an exact copy of the website you wish to impersonate, so that you can trick a user into entering their credentials into a website that looks exactly like the original. See this [video](https://www.youtube.com/watch?v=RMCUIQaqw6E) which explains how one can use a simple tool called SuperPhisher to create a fake  Gmail login page. 

## Topic 6: Understanding Same Origin Policy

When a web-page fires an HTTP Request to a different origin (URI Scheme + hostname + port combination), the request will reach the server, but the response will be blocked by the browser (unless authorized by the server using a CORS header). Read more on this here: [Wikipedia/Same-origin-policy](https://en.wikipedia.org/wiki/Same-origin_policy). The same is true for Javascript in a browser not being allowed access to elements created in another "origin". 

Broadly, one origin is permitted to **send** information to another origin, but one origin is not permitted to **receive** information from another origin. The prohibition on receiving information is intended to prevent malicious web sites from reading confidential information from other web sites, but also prevents web content from legitimately reading information offered by other web sites.

The restrictions on reading information received from other origins is also somewhat subtle. For example, the HTML &lt;script&gt; element can execute content retrieved from foreign origins, which means web sites should not rely on the same-origin policy to protect the confidentiality of information in a format that happens to parse as script. You need this to happen so that you can load Javascripts hosted on CDNs like for instance [JQuery](https://code.jquery.com/).

This is also true for the &lt;img&gt; tag which can fire GET requests for loading images, but someone may use them for firing any GET request (and if this GET request modifies data, then a CSRF attack becomes possible). Read more on preventing CSRF here: [OWASP CSRF Prevention Cheat Sheet](https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)_Prevention_Cheat_Sheet#General_Recommendation:_Synchronizer_Token_Pattern)

In other words, the SOP does not prevent attackers to **write** data to their origin, it only disallows them to **read** data from your domain (cookie, localStorage or other) or to do anything with a response received from their domain.


Watch this video to grasp the details: 
[HTML5 Security Part 1/3 - Same Origin Policy Basics](https://www.youtube.com/watch?v=jDE0cntjOq8)


## Topic 7: How can MD5 Hashes be broken using non-secure passwords

This article by Jack Singleton on Martin Fowler's website [One Line of Code that Compromises Your Server](https://martinfowler.com/articles/session-secret.html) shows how easy it is to use a dictionary attack using something like the [CrackStation Lookup tables](https://crackstation.net/).

To quote from CrackStation itself:

*Crackstation's lookup tables were created by extracting every word from the Wikipedia databases and adding with every password list we could find. We also applied intelligent word mangling (brute force hybrid) to our wordlists to make them much more effective. For MD5 and SHA1 hashes, we have a 190GB, 15-billion-entry lookup table, and for other hashes, we have a 19GB 1.5-billion-entry lookup table.*

To quote from Jack's article: 

*Wow! In just 43 seconds we blasted through over a billion hashes and, 85.34% of the way through the list, correctly guessed 'super secret'.*

So in essense, if a password created by you or by someone else in the world, ever leaked somehow on the internet, it has most likely reached a dictionary or a password list like CrackStation. You better not re-use it. It's just simply easier to generate a new password for each usecase, using a strong password generator. 

Related reading: [Strong passwords and Rainbow Tables](https://security.stackexchange.com/questions/60691/length-of-passwords-that-are-rainbow-table-safe)

## Topic 8: Easy hacking via Social Engineering

Watch this video to see how easily sometimes people can hack into a person's account by fooling a call center employee to believe them: [Hacker on Call in DEFCON](https://www.youtube.com/watch?v=lc7scxvKQOo). This technique of tricking people into performing an action they don't really want to, or reveal information that shouldn't be, is called Social Engineering. 

Accidental disclosure of information can happen even with SMS based Two Factor Authentication. For instance, if you have SMS preview enabled (which is common nowadays for mobiles), and if the OTP password is present in the first few characters of the SMS, then anyone can see your OTP SMS even if your phone is locked. This is dangerous, and that is why smart implementations of OTP SMS will always put your OTP password at the end of a slightly long SMS message so that message previews don't accidentaly give away the password to snooping eyes.

## Topic 9: The danger of using fingerprints for authentication

Fingerprint based authentication is becoming quite common nowadays, with phones and laptops allowing you to swipe a finger, or register multiple fingers for quick access. There are two issues at play here: 

1. Your fingerprint cannot be modified. Once its lost, or compromised, you pretty much cannot do anything about it. You can't change your fingerprint! For this reason you need to be very careful of where you give your fingerprint information. You don't want someone storing your fingerprint in a database which eventually gets compromised. For this reason the recommendations for fingerprint security implementations is to store some representation  of the fingerprint, rather than the fingerprint itself, so that in case of a compromise, the original fingerprint information is still safe. Read more about this here: [Apple Fingerprint Security](https://support.apple.com/en-us/HT204587)


2. Your fingerprint works even when you are sleeping or unconscious. So, if someone whacked you, they can use your fingerprint to access any device by just touching your hand to the device. The same is true if you passed out after a heavy bout of drinking. Think about it.

## Topic 10: Understanding HTTPs / SSL / TLS

To understand HTTPs, one needs to understand the following concepts: 

1. Asymmetric Encryption, which uses a public/private key pair in which the private key remains private and secret, while the public key is shared. This helps in ensuring that data sent to the server (or bank website) which has been encrypted using the server's public key can only be decrypted using the server's private key (and not by anyone snooping in between). Also, data sent by the server by encrypting with the private key can only be decrypted by using the public key which guarantees that the message was indeed sent by the trusted server (proving its identity). 

2. Symmetric Encryption, which uses a single shared key, is faster than Asymmetric Encryption. Hence the Asymmetric Encryption method is used only for initial handshake, verification and then a random session key is generated to be used for further communication between the client and server for faster and *secret* communication. Of course, the session key is also sent encrypted using the Asymmetric Encryption mechanism for safe delivery, before switching over.


**Related links to grasp HTTPs better:**

1. Watch this video to get a good high level understanding of HTTPs/SSL/TLS: [What is HTTPs?](https://www.youtube.com/watch?v=JCvPnwpWVUQ) (11 mins)

2. An excellent explanation of HTTPs: [How does HTTPs actually work - by Rob Heaton](http://robertheaton.com/2014/03/27/how-does-https-actually-work/)

3. [How does verification with Root CA Work](https://stackoverflow.com/questions/589622/ssl-question-how-does-a-root-ca-verify-a-signature): *... mathematically computed against the **public** part of the CA to verify that the **private** part of the CA actually signed the cert.*

## Topic 11: Evercookie: Hard-to-delete cookies

Evercookie is a Javascript API, created by Sam Kamkar (of the [Samy worm](https://samy.pl/popular/) fame!) that produces extremely persistent cookies in a browser. Its goal is to identify a client even after they've removed standard cookies, Flash cookies (Local Shared Objects or LSOs), and others.

This is accomplished by storing the cookie data into as many browser storage mechanisms as possible. If cookie data is removed from any of the storage mechanisms, evercookie aggressively re-creates it in each mechanism as long as one is still intact.

It is totally NOT recommended to use Evercookie, but it is a good idea to understand how they work, so that you can understand how you might be tracked! 

Read more about it here on [Github/smayk/evercookie](https://github.com/samyk/evercookie), and play with a demo here on Samy's website [Try Evercookie](https://samy.pl/evercookie/).


## Topic 12: Vulnerability Checker for NPM Libraries - Bithound

Check out [bithound.io](https://www.bithound.io/) to see how a Node.JS project can use a static code analyser and dependency checker to identify components in your project which may have known vulnerabilities. [bithound.io](https://www.bithound.io/) is free for Open Source projects, so you should be able to plug it in your public Github projects. See the most popular libraries like [Angular.JS](https://www.bithound.io/github/angular/angular.js) and [d3](https://www.bithound.io/github/d3/d3) reports on bithound here: [Popular Bithound Projects](https://www.bithound.io/popular)

## Conclusion

Teaching is a great way to learn. Just as I did, hopefully you found some of above topics and links fascinating. The field of security is always growing and while new attacks are being uncovered everyday, so are new counter-measures being designed. 