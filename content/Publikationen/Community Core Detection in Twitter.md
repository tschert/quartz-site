---
Title: Community Core Detection in Twitter – a "Bottom Up" Heuristic
Author: Tscherteu, Gernot; Langreiter, Christian
Year: 2009
Location:
Publisher: mememapper Blog for Sunbelt XXX,  International Social Network Conference, in **Riva del Garda, Italy**, from **June 29 to July 4, 2010**
URL:
URL2:
Tags:
  - twitter
  - social_network_analysis
  - community_detection
---

%% infobox:start %%

> [!publikation] Publikationsdaten
> **Autor:innen:** Tscherteu, Gernot; Langreiter, Christian
> **Jahr:** 2009
> **Erschienen bei / in:** mememapper Blog for Sunbelt XXX,  International Social Network Conference, in **Riva del Garda, Italy**, from **June 29 to July 4, 2010**

%% infobox:end %%

the paper was made for a presentation at
The **Sunbelt XXX** International Social Network Conference, in **Riva del Garda, Italy**, from **June 29 to July 4, 2010**,


# Community Core Detection in Twitter – a "Bottom Up" Heuristic

**Gernot Tscherteu,** reality lab, Vienna, Austria; gt@realitylab.at

analysing twitter data collected by

**Christian Langreiter**, synerge, Langkampfen, Austria, chris@langreiter.com

## Abstract

In this paper we present a very lightweight heuristic for detecting cores of expert communities within twitter. The heuristic combines simple text search methods with social network analysis. One big advantage of this heuristic is that it needs not to be run over the whole network. As a “bottom up” approach it explores the network around seed accounts and detects communities with simple measures.

## Background

We assume that the reader has a basic understanding of what twitter is and how it works. (Probably one of the shortest and easiest explanations is given in a [visual demonstration of CommonCraft](http://www.google.at/url?sa=t&source=web&oi=video_result&ct=res&cd=4&url=http%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DddO9idmax0o&ei=tRlLSpXzHofH_gaswfWFCQ&usg=AFQjCNE9iOTUpdb2jwvSNaJDLhzG_k6zOg&sig2=ZMhR7Kbm3WzjjNIhd1BpYQ).) Here is some statistical data (May 2009), provided by the media analyst [Sysomos](http://www.sysomos.com/insidetwitter/)

- 72.5% of all users joined Twitter during the first five months of 2009.
- 85.3% of all Twitter users post less than one update/day.
- 21% of users have never posted a Tweet.
- 93.6% of users have less than 100 followers, while 92.4% follow less than 100 people.
- 5% of Twitter users account for 75% of all activity.
- New York has the most Twitters users, followed by Los Angeles, Toronto, San Francisco and Boston, while Detroit was the fast-growing city over the first five months of 2009.
- More than 50% of all updates are  posted using tools, mobile and Web-based, other than Twitter.com. TweetDeck is the most popular non-Twitter.com tool with a 19.7% market share.
- There are more women on Twitter (53%) than men (47%)
- Of the people who identify themselves as marketers, 15% follow more than 2,000 people. This compares with 0.29% of overall Twitter users who follow more than 2,000 people.[1]

Apart from being the target of commercial analysts, Twitter has been increasingly become subject to academic research [3, 4, 5, 6, 7, 9]   Here are some of the most interesting findings relevant to these papers.

**General Network Properties:** It has been shown by Java et al. that the cumulative follower degree distribution for Twitter follows a power law with an exponent of about -2.4. [6] In other words, a very little number of twitter users hold a very high proportion of incoming links (i.e. is followed by many people). The mass of people have very few followers -  as already stated in the  the Sysomos report: “93.6% of users have less than 100 followers,” and a similar power distribution has been observed in the Web and in the Blogosphere. The Twitter network is much denser than the Blogosphere. Java et al. calculated an average degree of 19 (ingoing and outgoing friendship links), compared to an average degree of 5 in the blogosphere. [6] The reason for that may be the relative ease of linking to a person by following him/her, or by sending a message.

**“Followers Network” vs “@ Network”:** Early research on Twitter like the above cited by Java et al have often focussed on the follower / followed relation. A study by Huberman et al. has shown that this network is very noisy and does not really represent the actual communication among users. [5]  Huberman et al. have shown, that a network that is based on @messages sent between users is much more meaningful. People may follow each other but they don’t necessarily send themselves @messages, and only if they do so it makes sense to assume a flow of communication between them. Therefore, we also decided to perform our work on twitter on the basis of the @messages network.

**Community Detection Algorithms** It is not the aim of this paper to present an alternative for well acknowledged algorithms for detecting communities like those by Girvan and Newman [8, 10]. Our approach is driven by other interests, and has therefore led to the heuristic that is outlined here. The general difference is that we’re not interested in finding **all** community clusters in twitter, but only very specific ones that exist around specific topics. Therefore, our approach is actually not analytic, but “synthetic” -  we are not starting with the network as a whole and trying to detect the densest cores in it, but start with specific seed users that we assume to be representative of a certain topic and reconstruct the network of their @relations around them.

## Definition of terms

In this paper we present **a heuristic for the identification of community cores within very large scale and very dense networks like twitter.** In order to better understand the techniques and the purpose of this approach we start with some definitions:

**“Heuristic** (/hjʊˈrɪs.tɪk/) is an adjective for experience-based techniques that act as aids in problem solving, learning and discovery. A heuristic method is particularly helpful in coming to a solution hoped to be close to the best possible answer, or ‘optimal solution’. Heuristics are “[rules of thumb](http://en.wikipedia.org/wiki/Rule_of_thumb "Rule of thumb")“, educated guesses, intuitive judgments or simply common sense” (<http://en.wikipedia.org/wiki/Heuristic>). In our case, a heuristic is not an algorithm. We apply algorithms, but simply modify them as soon as we expect a better solution. This modification of the algorithm is part of the intended learning process. Some of the algorithms that we have applied haven not been coded as a software, but have been executed manually, in order to get a better “feeling” for the data and possible techniques for identifying communities - knowledge that could later be implemented in the applications.

**Community**. We use this term in a different sense than in the context of “community detecting algorithms”. These algorithms detect “community structures”. A community structure consists of a subset of nodes, which manifests dense node-node connections t and less dense connections to nodes in other communities (Garvin-Newman). When we talk here about “communities”, we do not only talk about structural properties, but also about actual groups of persons that share common interests and that have established patterns of communication. The community members - at least the core members - should consciously consider themselves as being part of a community, and even a non-scientific observer should come to the same conclusion. In other words: Our notion of “community” is very pragmatic: It serves the self perception of its members and the orientation of community newbies, as well as external observers like researchers or professionals.

**Very large scale and very dense networks.** The Twitter network that we are dealing with consists of 4.5 million accounts that are highly interconnected. For our purpose, we do not focus on the connections between followers and “followed”) connections, but on the exchange of messages [see above]. Whenever an account posts a message that contains an “@”, followed by the addressed account’s name (e.g.: @timoreilly), we can mentally draw an arc or an arrow, *directed* from the sender to the recipient. If account A sends multiple messages to account B, we can graphically represent this relation with a thicker line, or by indicating the number of messages (e.g. 7) above the arc. The numbers represent the intensity or *weight* of  the relations between the nodes representing accounts. So the network that we are dealing with is a *directed* and *weighted* network of Twitter accounts exchanging *@messages*. The direction and the weight gives us simple but efficient indications for assessing the nature (e.g. fan or star) and intensity of a relation.

![](1_a-to-b.png)

## How the heuristic works

The main difference between the established methods for identifying community structures and this heuristic is that we don’t need to run it over the whole network. We are only interested in specific parts of the Twitter network and interested in finding a specific community that it is dealing with a specific topic or subject area. Say, for example, we want to find  a big community or at least smaller communities revolving around the subject area “Computer Aided Design (CAD)”. Since we don’t know very much about this specific group(s) of people, our heuristic starts very much like an ordinary user would start his search:

**Step 1.** We look for “important” people dealing with “Computer Aided Design (CAD)”. The simplest way to do this is to use twitter services like wefollow.com, twellow.com, or tweepz.com. At wefollow.com we simply enter “CAD” as a tag and at [twellow](http://www.twellow.com/search), [tweepz](http://www.tweepz.com/) we can search the bios of twitter users for “CAD”, and get a list of people usually sorted by the number of followers they have (Which is a doubtable ranking mechanism). This very simple method can later be replaced by more sophisticated ones, like producing a ranking of users that frequently mention “CAD” and related terms in their posts. The twitter search service [topsy](http://topsy.com/) already provides such a function.  From this list we take a set of 10 to 20 accounts as “seeds”.

EXAMPLE: The following 10 seed accounts mentioned “CAD” in their Twitter bio: [Floorplanner,](http://twitter.com/Floorplanner) [manujarch,](http://twitter.com/manujarch) [burhop](http://twitter.com/burhop)[, ArchBlocks,](http://twitter.com/ArchBlocks)[Skrythe,](http://twitter.com/Skrythe) [mrcadman,](http://twitter.com/mrcadman) [EspressoMatt](http://twitter.com/EspressoMatt)[, stavanja](http://twitter.com/stavanja)[, rickyjordan](http://twitter.com/rickyjordan)

**Step 2.** We build networks around these seeds and collect their twitter neighbours. (In our research we use the package Pajek for Social Network Analysis). The Neighbourhood network of a seed account consists of accounts receiving or sending messages from and/or to the seed account. We only take direct neighbours (and not neighbours’ neighbours), which we call the “1-neighbourhood”. As we take incoming, as well as outgoing messages, we call this setup the “1-all-neighbourhood”. Each seed produces a relatively small neighbourhood network with itself at the centre.  Of course there are arcs between the seed account and all his neighbours, but there are also arcs between some of the neighbours as well, because they might also exchange messages.

EXAMPLE: 1all neighbourhood of  [rickyjordan](http://twitter.com/rickyjordan)

![](1%20all%20neighbourhood%20of%20rickyjordan.jpg) ![](1%20all%20neighbourhood%20of%20rickyjordan_line%20.jpg)

We posted two versions: One indicates the weight of the arcs with numbers, the other indicates weight by line thickness (what seems to be the clearer solution). In both versions the size of the vertex indicates how many messages are sent AND received. The thicker the vertex, the more messages. However, it is clearly seen, that even the network of immediate neighbours, which are only “one message away”, features a certain amount of complexity.  Not only does the “star” of this network, namely rickyjordan, communicate a lot, but also do his neighbours - and the communication between certain pairs of neighbours is sometimes even more intense than between rickyjordan and any of his neighbours.

**Step 3** We fuse the individual seed neighbourhood networks into one larger network. As some accounts share the same neighbours, it is now very likely that the different seed accounts are connected with each others. (Only in some rare cases accounts do not share neighbours with others, and therefore their seed network becomes an isolated component in the fused network.)

EXAMPLE: This is the “1 all-neighbourhood” of the seeds identified in step 1. The network consists of 225 nodes. There is a clear central cluster, and only two nodes form an isolated cluster - all the other nodes are connected with each other.

![](225%20CAD%20people%20with%20labels.jpg) ![](225%20CAD%20people%20without%20labels.jpg)

As fusing networks with Pajek is very time consuming in our choice of network analysis tool, my colleague Christian Langreiter developed a small assistant application that does the same job.

**Step 4** We calculate the all-degree of all nodes in the fused network. One expects that the seed accounts are central with respect to the in-out or all-degree, since the network has been built around them. The “all degree” is calculated by adding up all messages a user sends or receives. But interestingly that’s not always the case. Some accounts show a higher degree. EXAMPLE:

| Rank | All-Degree | Id           |
|------|------------|--------------|
| 1    | 173        | burhop       |
| 2    | 74         | jeffmirisola |
| 3    | 68         | jru_1962     |
| 4    | 67         | solidsmack   |
| 5    | 66         | rickyjordan  |
| 6    | 48         | swgeek       |
| 7    | 48         | gol10dr      |
| 8    | 47         | marcnelson   |
| 9    | 47         | richard_hall |
| 10   | 45         | cserran      |

The table shows the top ten all degrees of the network produced in step 3.  
The following accounts have not been among the set of seed accounts: jeffmirisola, jru_1962, solidsmack, swgeek, gol10dr, marcnelson, richard_hall, cserran.

**Step 5.** We take the top all-degree accounts initially not included amongst the set of seed accounts and build their 1-all-neighbourhood networks and add these networks to the original fused network that we got in step 3. The result is of course a larger network. When iterating Step 4 and 5 one gets two possible outcomes: Either [A.] the network radically expands and is fragmented into different clusters, or [B.] the expansion of the network soon reaches a limit, sinces the top ten all-degrees tend to remain the same throughout all iterations. Furthermore, the network is not fragmented into different clusters but remains one big cluster.

EXAMPLE: This is the network after one iteration (one version with, and one without labels). The top ten all-degrees are marked red.

![](439%20CAD%20people%20without%20labels_%20top%201.jpg) ![](439%20CAD%20people%20with%20labels.jpg)

The top 10 all-degrees in this network are:

| Rank | All-Degree | Id           |
|------|------------|--------------|
| 1    | 173        | burhop       |
| 2    | 146        | solidsmack   |
| 3    | 132        | jeffmirisola |
| 4    | 124        | jru_1962     |
| 5    | 119        | swgeek       |
| 6    | 96         | marcnelson   |
| 7    | 75         | gol10dr      |
| 8    | 74         | richard_hall |
| 9    | 66         | rickyjordan  |
| 10   | 53         | cserran      |

This is the same set of top 10 accounts already found in step 4, only in a slightly different order! Of course case B is nothing else than a “self fulfilling prophecy”: When focussing on the most important nodes in the network and expanding the network along the neighbourhood of those most important nodes, they necessarily become more and more important, unless - and this is case A - they don’t belong to the same community, but to different communities. This explains why the network expands so rapidly (as the important nodes have *different* neighbours) and why it is fragmented into different clusters. Our experiment with “CAD” seeds ended up with a case B network, but a simple inspection of the top degree accounts bios has shown that they are not dealing with “CAD” in general but with a very specific aspect of it, namely practice around a CAD program called “SolidWorks”. Here is the network of the 31 most central users in this network (central with regards to all-degree):

![](31%20top%20CAD%20people%20after%201%20iteration.jpg)

In another experiment, we decided to search for the term “3D”. We found no big community dealing with “3D”, but several smaller ones and none of them included “cinema 4d” as a central topic. Instead of finding a big community around “3D”, we found several communities of professionals, each dealing with a specific topic like film, games and flash, where “3D” plays a certain, but rather peripheral role.

![](1187.jpg) ![](1187_002.jpg)

Each of these individual clusters may be treated as if they were case B communities and step 4 and 5 of the heuristic; i.e. identifying the top degrees and adding their neighbourhood to the network may be performed. This has been done for a cluster where flash seemed to play a dominant role:

![](855.jpg) ![](855.jpg) ![](30%20top%20flashers.jpg)

Although we certainly need more experience in exploring and identifying communities, it seems very likely that the heuristic would produce a cascade similar to the  following.  Either we get lucky as in the “CAD” experiment, and immediately detect a case b community, or - more likely - we get some case b communities and a “case a” cluster that doesn’t seem to represent a coherent community or subject area.

![](case_a_and_b.png)

When browsing “case a” clusters one gets the impression that they somehow represent “the rest of the world”. They tend to be a wild mixture of people and topics. In many cases the “case b” cluster doesn’t show any coherence with regards to the communicated content, but a clear bias towards a certain language. Especially the dutch twittosphere frequently appeared,,  since some seed accounts had “3D” in their bio, but instead of communicating with English speaking topic communities, dutch users tend to talk mainly to friends within their country. In such “rest of the world clusters” or nation clusters, it is naturally possible to go deeper and discover more and more communities, so that finally all cases a can be seen as cases b.

## Conclusions und Further Work

The heuristic shown above is clearly appropriate to detect community cores around certain topics. Furthermore, it provides an instructive experience on the structure of the twitter networks and the relations between single communities. Many of the steps can be automated and this will be done in the next months. Nevertheless, we still appreciated very much the experience of manually constructing networks and inspecting them on the level of individual accounts and small communities. When building tools for detecting and analysing communities with twitter, one should focus on exactly that experience and should not only present “results” to the user - even if he/she is not a researcher or a professional media analyst, but a simple twitter user who wants to have a birds view of his network or wants to find a potential interesting group of people dealing with a certain topic. Further work needs to be done in the following areas: First of all we need to apply the heuristic to more areas of the twitter network and need to learn more about how communities are connected to each other. National subnetworks are a special challenge. Secondly, we need to increasingly automate work-intensive aspects, especially such as the content analysis of certain clusters, in order to figure out whether it as a “case a” or a “case b” cluster. And thirdly, we need to design a more and more fluent explorative user experience around this heuristic by building mock-ups and prototypes. Only the direct interaction with network graphs will provide useful insights on how to optimise the search experience.

------------------------------------------------------------------------

**References**

[1] Alex Cheng and Mark Evans. Sysomos \| In-Depth Look Inside the Twitter World. http://www.sysomos.com/insidetwitter/ (accessed Sep 10, 2009).

[2] Amanda Lenhart, Senior Research Specialist, Susannah Fox, Associate Director. *Twitter and status updating,* http://www.pewinternet.org/Reports/2009/Twitter-and-status-updating.aspx.

[3] Dejin Zhao; Mary Beth Rosson. How Might Microblogs Support Collaborative Work? In *Workshop on Social Networking in Organizations,* *November 9, 2008,* *San Diego.* 2008.

[4] Honeycutt, Courtenay; Herring, Susan C. Beyond Microblogging: Conversation and Collaboration via Twitter. System Sciences, 2009. HICSS ‘09. 42nd Hawaii International Conference on. *System Sciences, 2009. HICSS ‘09. 42nd* *Hawaii* *International Conference on* 20091-10.

[5] Huberman, Bernardo; Romero, Daniel; Wu, Fang. Social networks that matter: Twitter under the microscope. 2008/Dec/04/.

[6] Java, Akshay; Song, Xiaodan; Finin, Tim; Tseng, Belle. Why We Twitter: An Analysis of a Microblogging Community. *Advances in Web Mining and Web Usage Analysis* 2009118-138.

[7] Krishnamurthy, Balachander; Gill, Phillipa; Arlitt, Martin. A few chirps about twitter. WOSP ‘08: Proceedings of the first workshop on Online social networks. 2008.

[8] Newman, M. E. J. Detecting community structure in networks. *The European Physical Journal B* *‐* *Condensed Matter and Complex Systems* 2004, *38* (2) 321‐330. http://dx.doi.org/10.1140/epjb/e2004‐00124‐y.

[9] Zhao, Dejin; Rosson, Mary. How and why people Twitter: the role that micro-blogging plays in informal communication at work. GROUP ‘09: Proceedings of the ACM 2009 international conference on Supporting group work. 2009.

[10] Girvan, M.; Newman, M. E. Community structure in social and biological networks. *Proc Natl Acad Sci U S A* 2002, *99* (12) 7821‐7826. http://dx.doi.org/10.1073/pnas.122653799.
