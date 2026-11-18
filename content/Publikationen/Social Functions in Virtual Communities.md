---
Title: Social Functions in Virtual Communities
Author: Alton-Scheidl, Roland; Diallo, Samba; Tscherteu, Gernot
Year: 1996
Location: Wien
Publisher: Informatik Forum, Vol. 10, Nr. 2
URL: http://www.web4groups.at/w4g/source/RateVoteSource.html
URL2:
Tags:
  - web4groups
  - virtual communities
  - social functions
ISSN: 1010-6111
---

%% infobox:start %%

> [!publikation] Publikationsdaten
> **Autor:innen:** Alton-Scheidl, Roland; Diallo, Samba; Tscherteu, Gernot
> **Jahr:** 1996
> **Ort:** Wien
> **Erschienen bei / in:** Informatik Forum, Vol. 10, Nr. 2
> **ISSN:** 1010-6111
> **Link:** [web4groups.at](http://www.web4groups.at/w4g/source/RateVoteSource.html)

%% infobox:end %%

## Abstract

This paper addresses two key design challenges for the Web4Groups project , a very early European-funded research initiative (1996) aimed at adapting groupware functionality for the World Wide Web. First, it examines role management as a means of enabling differentiated social functions within diversified virtual communities, arguing that fixed, inflexible role systems hinder social development and proposing a flexible, customizable role model inspired by real-world social dynamics. Second, it explores rating as a tool for expressing immediate feedback and enriching context information in high-volume communication media, drawing parallels to economic value systems and introducing the concept of multiple virtual currencies. The paper introduces the "board" metaphor as a flexible container for communication activities, presents an entity-relationship model linking users, roles, and boards, and discusses the inheritance of social functions across different social settings. It concludes with a set of research questions guiding interdisciplinary investigations into the social, economic, and technical implications of adaptable role systems and rating economies in computer-mediated communication.

## Content


_1996-05-26 by Roland Alton-Scheidl, Samba Diallo, Gernot Tscherteu_

# Social Functions in Virtual Communities

**Some Challenges for the Metadesign of a Web Based Conferencing Service**

**Scope**

Computer based conferencing services are available for more than 25 years now **[1]**. The non- simultaneous exchange of messages among different groups of persons with similar interests is a key factor for the success of many telematic services, like bulletin boards, professional online services, or the Internet. The Internet service "Usenet News" covers more than 6000 topics nowadays. However, it lacks of multimedia capability, does not allow to start closed groups for project teams and users suffer from information overload. Furthermore, online based conferencing services hardly support definitions or customisation of social roles according to rules that evolve through group processes or new application fields.

The EC funded research project Web4Groups **[2]** takes up the gauntlet to adapt groupware functionality for the overhelming successful presentation platform World Wide Web. Gateways to the world of listservers and Usenet news will be included. Beyond asynchronous conferencing, Web4Groups shall also cover means for voting and rating and tools for joint document production. Furthermore, users of a Web4Groups proxy **[3]** will be able to append or join a discussion at any web page in the World Wide Web.

The method of the project is based on integration of existing concepts rather than new developments from the scratch, a strong user involvement and various assessment steps. A beta version of the basic system is expected for the 4th quarter of 1996.

This paper adresses two design challenges: (1) Role management as means for enabling the differentiation of social functions in diversified virtual communities and (2) rating as a tool to express immediate feedback and as means for enriching context information in high volume communication media.

Most conferencing services - and even worse the web itself - have very low adaptibility for roles as mirrors for social settings. Available roles are confined to administrators or moderators only in most systems. The ascription of all possible rights to predefined roles only hinders to impute persons with special functions according to the needs of the group. For today`s conferencing services, the application fields range from open discussions, market situations, to project archives, education support or guestbooks. Customizable role assignment could help to better serve this variety of application fields.

**_Role Management_**

As electronic bulletin boards, mailing lists or Usenet Newsgroups form social communities, we can observe the emergence of differentiated social functions. One of the best known roles in the Internet is the role of the moderator. A moderator performs actions on different levels: On the one hand s/he has communicative tasks like calming people down, if the discussion becomes more than passionate, on the other hand s/he has editioral rights like purging unsuitable messages; both of them are of social relevance. As we can see in this simple example: Roles are set by assigning special functions, rights and privileges to sets of users.

In "normal" society roles are very dynamic. Functions, rights and privileges of a role may differ according to the social environment in which roles are performed. The role of being a teacher in a rural elementary school will differ from being a teacher at the faculty of arts.

A typical asynchronous conferencing service **[4]** has users with the following differentiated roles:

1) Providers, that run servers: they decide, the "culture" of the server: if public anonymous areas are available, which conferences are replicated, if billing for certain areas is necessary, how registration is organised, etc. 2) Organisers are responsible for certain areas (or boards, see later): they manage the structure of a discussion, announce sub-conferences, may suspend an area, may add or remove members. Organisers can also have the right to moderate discussions and thus are responsible for the content. They may warn people, if they send unlegal messages or will even remove these messages or even undesirable users. 3) Visitors may enter an area or a board, depending whether it is public or not. They may 4) subscribe a board and become a member, which may be approved by the organiser.

Other roles may be: a reviewer, that rates contributions; a person that is allowed to give a vote in an inquiry; a teacher, who assigns exams to pupils, and so forth.

One of our premises is, that role-systems in computer based conferencing systems should be as flexible as role assignment in normal life. We assume that a fixed and unflexible set of roles hinders social development in virtual communities. One of our investigation-tasks in the project Web4Groups will focus on the consequences of fixed role-systems and which impacts on social dynamics and individual well-being will arise from more flexibility. The base software of Web4Groups will rely on a fixed set of roles (owner, visitor, subscribed person, organiser); however, the database will be prepared to support customizable role definitions for advanced applications.

**_Rating_**

Rating will introduce economic aspects into computer based communities. An abstract definition of rating could be the following: Assigning values to acts of communication of other members in a community. Again an example of "normal" life: When I like the performance of a band I clap into my hands, whistle or shout. The more I like it the longer and louder will be the noise that I produce. If the audience keeps quiet, the band will get more and more insecure and considers the non-reaction as a bad rating. As we can see in this example: Rating in normal life may be very spontanous and reactive - sometimes without rational reflection and purpose. Economies on the other hand can be considered a more or less reflected rating-system. People are expected to think before participating in economy as consuments or producers. This is at least an axiom of modern economics. Money is the value that is assigned to goods and services. Money is more or less the only way of rating in modern economies. The main advantage of such a system is its universality, as money-values are globally interchangeable. The main disadvantage of such a system is the fact that money becomes a very abstract value, far away from spontaous reactions and often incapable to map indivudual and social values, like pleasure, well-being and health. Money - economy is a trade off of universality against adaptability to an enormous set of social settings where rating is needed. One of the biggest problems of modern society seem to arise from the fact that more and more social settings and whole subsystems get deeply involved into money-economy (with all commonly known disadvantages in various social and economic sectors, e.g. agriculture),which has severe problems to map a grown system of values and ratings. A one and only game and unit for exchanging goods and services: that seems to be too simple, abstract and general.

One of our sub-tasks is to look at modern economy from the perspective of a system-designer. What are the inherent advantages and problems of a general value system and how could a redesign at least for the economic sector of information exchange look like. Rating in computer-based systems could provide different currencies: You could give virtual flowers to messages that you consider sympathic. You could give stars to rate the scientific content of a message or rate them with a "sadface" to show that you disagree.

The next step is to think about a combination of rating and privileges: After having reached a certain amount of rating-points of a certain currency you will get additional rights. Such a combination seem to be logical but is it senseful? What are the outcomes? Who is going to define, how much points you have to receive before getting new addtional rights and how will they look like? What kind of security has to be provided to restrict misuse? A lot of questions arise and not all of them can be answered with an analytical approach. Within the project Web4Groups, we will follow also closely the results of user experiments.

**Social Functions in Virtual Communities**

We assume that virtual communities will develop a more and more complex system of roles and ratings. Some fixed roles are always part of any computer mediated communication service and rating is often performed on the subject line, if no special raring mechanism is implemented. In the worst of all cases this development takes place without any reflection about the social consequences and the impact on all the individuals in such virtual communities.

We want to point out that designing a system of roles and evaluation of content isn't a mere technical task. It is a joint design task of social scientists, economists, technicians, and artists as well **[5]** . Virtual economists shall investigate systems of value-exchange and shall be able to design them according to what members of a system expect from exchange for virtual communities.

One expectation might be a perfect flow of information and knowledge, controlled by a democratic process of value exchange. Another expectation might be to be part of a vivid community of love and respect. A third expectation might be to take part in a community of trendsetters where only brandwnew information is wanted. Depending on different expectations different value sets might be developed. Maybe it will be possible to combine different expectations in one communication service environment. That's what we would consider a perfect platform, which Web4Groups could offer for the Internet community. We truly expect virtual economies to have certain backlashes on monetarian economies. But more on that later. Let us introduce the board as a metaphor for telematic speech acts first.

**_The Board as a Place for Communication Activities_**

The search for a metaphor for communication activities resulted in using the term "Board", having in mind a very simple wood made hand-held blackboard (which we use in Austria for writing down points when playing cards). The board metaphor is already common in the world of electronic conferencing services: Bulletin Board Systems are the predecessors of Internet and Online Services. A document, edited by one or more persons can also be called a board. You may stick annotations on a board or mark up certain parts. And a box for personal messages can be called "personal board". Other metaphors, like "box", "meeting", "collection" or "conference" affect only parts of group support activity. "Folder" is also a common metaphor, but the content of a folder is not meant to be public. Another metaphor, suggested by Palme **[6]** was "activity", but it hardly re-locates lost orientation in telematic communication settings. Other future applications which the metaphor "board" could cover: a marketplace for bargaining objects (offer/demand), a project board as a common work space, a board as a to-do-list for a project group with dates and responsibilities, or a "peer group board" that contains references with recommendations.

Figure 1 shows the set of boards that has been selected for implementation in a basic version for Web4Groups:

![](app://cf5d89ede08351b6da19d3472b9957106e0d/Users/parq/Obsdian%20Synced/Gernot%20Tscherteu/Publications/images/figure1.gif?1787306289000)  
Figure 1: Board Types

A message board may relate to a specific speech act, which is assigned by the creator of the board. This is a basic set of speech acts for messages in discussion boards:

![](app://cf5d89ede08351b6da19d3472b9957106e0d/Users/parq/Obsdian%20Synced/Gernot%20Tscherteu/Publications/images/figure2.gif?1787306289000)  
Figure 2: Board Types for Messages

**_A flexible Role Model_**

A review on existing asynchronous computer conferencing and groupware services on the Internet shows low flexibility of handling or customizing roles according to virtual communities' needs **[7]**. The social functions in the communication tools are mostly fixed.

![](app://cf5d89ede08351b6da19d3472b9957106e0d/Users/parq/Obsdian%20Synced/Gernot%20Tscherteu/Publications/images/figure3.gif?1787306289000)  
Figure 3: Fixed set of rights and roles

Such a system doesn't allow to turn on and off rights in certain roles and the set of roles can't be changed or expanded and cannot be adopted easily to new social situations or needs. All changes have to be done by changing the programming-code, which in turn gives absolut control for programmers for the emergence of new social settings. Certainly, the advantage of such a system is that it is completely transparent for all applications and easy to learn.

The BBS software FirstClass offers another solution, introducing a more complex role management which allows the free definition of roles by an authorized person. This flexibility to adopt to the needs of the service provider and the virtual communities, that are hosted, is certainly one of the success factors of this software.

![](app://cf5d89ede08351b6da19d3472b9957106e0d/Users/parq/Obsdian%20Synced/Gernot%20Tscherteu/Publications/images/figure4.gif?1787306289000)  
Figure 4: Customising roles with FirstClass

We see, with this software the set of given roles can be expanded to the real needs of the provider or the virtual communities that use the online service.

![](app://cf5d89ede08351b6da19d3472b9957106e0d/Users/parq/Obsdian%20Synced/Gernot%20Tscherteu/Publications/images/figure5.gif?1787306289000)  
Figure 5: Switchable Rights

It is possible (like in "real life") that a person can hold two or even more roles at once, and therefore gets a combination of rights:

![](app://cf5d89ede08351b6da19d3472b9957106e0d/Users/parq/Obsdian%20Synced/Gernot%20Tscherteu/Publications/images/figure6.gif?1787306289000)  
Figure 6: Multiple Role assignment

Here we assume that a system allows the definition of n roles, and a set of roles can be defined for use in specific conferencing areas to serve the needs of diversified virtual communities.

![](app://cf5d89ede08351b6da19d3472b9957106e0d/Users/parq/Obsdian%20Synced/Gernot%20Tscherteu/Publications/images/figure7.gif?1787306289000)  
Figure 7: Roles can be freely defined and named

However, an expandable set of roles makes only sense with a fine granularity of role elements, that can be assigned to each role. Too few role elements might cause unresolvable role conflict situations. Hence, a given set of role elements is considered as a matter of customization of roles.

The following role elements are suggested for Web4Groups: Role element (1) defines, whether a user is allowed to see the _board representation_, i.e. the icon of a conference or the subject line of a message. (2) allows to _open a board_, i.e. to see a description text of a conference or the content of a message. Another role element (3) decides, whether a user is allowed to _create a board_. Then we have the right to _rename a board_ (4)and the right to _remove_ it (5). To _edit a board_ is another role element (6). To _copy a board_ (7) is handled like a subscription of the board and - on user's request - also all following messages or new versions in that board. The subscription target normally is the personal board, but in fact it can be any board or even an E-Mail address. To _move a board_ physically (8) in the database is another right, likely performed by the owner or an organiser. Then we have rights that provide some context information on the board: _see the history_ (9), _see the ratings_ (10), _allow to rate_ (11), _see the hits_ (12), and _see statistics_ (13) of this board. Then we need to define rights, who may _see users in their roles_ (14), _change users in roles_ (15), _see role definitions_ (16) or _edit role definitions_ (17). Another role element may be to _approve_ (18) messages in a post-moderated discussion or the right to _redirect_ (19) new boards. Further rights may be to use non-web gateways, as some of them may need a billing mechanism, e.g. a _fax-gateway_ (20). Last but not least a person may have the right to _edit user data_ (21), e.g. for registration issues. Advanced role elements may cover the _right to start a voting_ or the _right to vote_, to _create or merge a joint document_, to _translate_ or to c_heck out_ a board to show, that it is in use.

**_Multiple role assignment_**

Let's keep the last figure in mind: a _system of multiple role assignment to single users_. Like in "real life" a person has several rights in various social settings and situations. Rights will change according to these situations. Rights in computer based systems or - to use a more general term like "social functions" which includes also obligations, permissions, prohibitions and so on - change dynamically. How do we map these different functions to CMC **[8]** ?

The system has to know in which situation or setting a user interacts with the system: Is it a discussion, a market situation where s/he wants to sell something or is it a joint editing project? According to the setting the system will assign rights to the user. In Web4Groups such settings are called "Boards" - a metaphor for telematic speech acts and meeting places as well. In Web4Groups functions and roles will change according to the board, where the user is performing interactions.

Now, which social functions are assigned to a user in which situation? Is it a fixed set of functions or is it flexible? If it's flexible, who is going to define which functions are in the set? Well, of course a flexible set of function always needs an additional role: Let's call it "organizer". The main function of an organizer in this case would be to assign functions to roles in a certain setting. One solution could be that the person who creates a setting (a meeting, a discussion...) is the organizer. But s/he may be able to appoint another organizer instead of him/herself or to give another person the same rights within the board. By the way, the possibility to "forward" access rights to another user in the same social community is a simple rule for announcing a representative.

Suppose there's only one organizer: The organizer defines roles and is assigning functions to each role. Suppose: it is a market where people want to buy and sell bicycles. A user coming from a discussion will have different rights and functions. In the discussion the user wasn't able to delete own messages as all replies to these message would loose their context and would become senseless. Now in the market board the user should be able to do so, if s/he has already sold the bicycle and is tired of getting new offers. In the discussion s/he was able to rate messages, now in the market the organizer decides that it isn't senseful to allow rating, as it could mislead customers.

![](app://cf5d89ede08351b6da19d3472b9957106e0d/Users/parq/Obsdian%20Synced/Gernot%20Tscherteu/Publications/images/figure8.gif?1787306289000)  
Figure 8: A user has different roles in different social settings

As we can see in the drawing above, Elvira will loose certain functions and will get others when she is moving from one board to another. An important design issue for Web4Groups is to inform the user about the change of rights. In "real" life the change of functions is somehow "obvious": We change a building and meet other kind of people in it and we talk another lingo. The change of roles and funtional elements of a role has to be that "obvious". In virtual systems such a change has to be indicated by the interface (by its grafical appearance, by sounds, by any interface behavior that leads to what we call "atmosphere"). This has to be considered very carefully. It is not just a technical problem but a matter of representing cultural behaviour.

**_The Relationship between Boards and Users via Roles_**

We sketch in the figure 9 an Entity-Relationship-Model to represent the relationship between a board concept, a user concept and a role. The starting point of this relationship is always a board.

![](app://cf5d89ede08351b6da19d3472b9957106e0d/Users/parq/Obsdian%20Synced/Gernot%20Tscherteu/Publications/images/figure9.gif?1787306289000)  
Figure 9: Relation between user, role and board

**_A board is associated with a number of specified role elements_**

This statement is represented by edge 1. A role element can be understood as an atomic action that can be performed on a board (e.g. creating, deleting, moving an object on a board). For every board there is only a finite number of role elements that can be associated with it. Which role elements can be associated with a board in a specific context, depends on the type of the board (is it a conference board, a market place, a joint editing board, ...), and on the status of the board (is it an open board, a protected board, etc.).

**_A board is associated with different roles_**

The main idea in this statement, edge 2, is that there are different perspectives when seeing a board. This role determines a group of single actions that may be performed on a board. This leads to

**_Role elements can be grouped to form roles_** (edge 3). This makes it possible to create roles like moderator, member, ...

**_A role is always associated with user_**s (edge 4): this is the indirect specification of the relationship between a board and a user. A user is only associated with a board when s/he plays a role in that board.

Each time when creating a new social setting - which in Web4Groups is represented by a board - an according set of roles is generated and certain role elements are assigned to each of them.

![](app://cf5d89ede08351b6da19d3472b9957106e0d/Users/parq/Obsdian%20Synced/Gernot%20Tscherteu/Publications/images/figure10.gif?1787306289000)  
Figure 10: Creating new boards and new roles

The point is that also boards of the same kind e.g. discussions might get a different set of roles and functions according to the environment, where the new board was created. Suppose you're in a discussion where the position of the organizer is very important and powerful: First it will not be very easy to open a new discussion and, second, the organizer in the new discussion will have the same important position like the "old" organizer.

Suppose you're in a very liberate and free discussion. First it will be quite easy to open a new discussion and second its organization should be as liberal and as free as the old one. This is only possible if we allow a flexible way of "role inheritance".

**_Inheritance of Social Functions_**

To allow such a flexible way of "role inheritance" each board has something that we call "inheritance table": The "inheritance table" defines

1. which role in the old board is allowed to create what new board-types (a discussion, a project folder, a market or a simple message)

2. which roles will be in the new board and which functions will be assigned to them.

The best way to realize such a inheritance-table would be a combination between some kind of table and a simple scripting language. Simply spoken: this inheritance table would be a little program written or changed by the organizer or any other person that is allowed to do so; it defines what happens when a new board - a new social setting - is created:

![](app://cf5d89ede08351b6da19d3472b9957106e0d/Users/parq/Obsdian%20Synced/Gernot%20Tscherteu/Publications/images/figure11.gif?1787306289000)  
Figure 11: Inheritation of social functions (table) at creation of social settings (boards)

It is very probable that in another discussion there would be other roles and also an other inheritance table. This difference in roles, functions and inheritance table can be considered a difference in _culture_. In a liberate culture everybody would be allowed to create a new board and everybody would have a maximum of functions, above all the key functions "to create new roles" and "to assign functions to roles" and "to edit the table of inheritance". As in a certain setting - e.g. a discussion-board - only one table of inheritance and only one set fo roles may exist, it is possible that those are changed permanently as everybody is allowed to do so. Such a community has to share a common view otherwise the permanent change of roles, rights and inheritance would lead to very insecure situations where actions and the whole system behavior are no longer predictable. In systems theory such a system is called non-trivial **[9]** . Therefore we suggest to call such communities "not-trivial communities". Triviality on the other hand is a property of a fully determined community where the consequence of actions and system behavior is highly predictable. In modern societies triviality is one of the most wanted things. Virtual communities could test what the consequence of non-triviality would be. How would people react on non-triviality and which mechanisms would be invented to come back to a certain ammount of triviality. We could get very important knowledge on mechanisms of self-organization in communities .

In a very controlled - and trivial - community the main changes depend on one person - in our examples above it was the organizer. Only if s/he invents new roles and changes the according rights, a major change in the social dynamics may emerge. The organizer may block any movement and any changes. One solution could be to create a new discussion with another organizer and another set of roles. Another solution would be to introduce certain mechanisms. Different mechanisms are possible:

1. Democratic ones like elections and pollings. In such a case it would be possible to suggest new roles or changes in the functional elements of roles and make a polling on this.

2. Economical ones, that we are going to explain in the next section.

However these mechanisms look like, they have to be defined in the table of inheritance. So the table of inheritance is similar to written constitutions or laws in "real" societies. In real societies the experts of laws (jurists and politicians) have a "structural advantage" against other members of society. In computer based communities computer-literate people, i.e. people that know how to program and how to change the roles and inheritance have a "structural advantage". Generally we can say that people wich are gifted in abstract thinking will be able to design changes whereas others that are more used to "situated thinking", i.e. thinking in practical contexts according to practical experience, are discriminated.

It will never be easy to program and to make changes. Therefore we see two options for open and egalitarian computer-commmunities:

1. Very simple ones with almost no role-management, but a limited possibility to adapt to a community's needs.

2. Rather complex communities, like the one we have introduced above, with an advanced interface design, that visualizes changes of social functions. New mechanisms, like the process of delegation, may certainly emerge in virtual communities.

**_Linking complex role management with a rating economy_**

Let's call our definiton of rating back into mind: Assigning values to acts of communication of other members in a community. Flowers and stars but also sad-faces could be such values, and whenever I like or dislike a message or the whole setting, I may rate it by giving a certain amount of this value to it.

People may not automatically participate in a new game of evaluation, there has to be an incentive, any kind of advantage to do so.

One could be, that they simply like it because they like to get flowers and to give it to others.

Another reason could be that they expect certain effects on the community like e.g. a better flow of communication or a well functioning review system.

In an existing economy, like money-economy of "real" life, people participate automatically, because in most cases they don't think of an alternative, but people in computer-based communities will have the freedom of choice as there will certainly exist a lot of different communities with different "economies" **[10]** .

Our model links role management with rating in the following simple way: Suppose your contributions in a discussion have received a lot of values (e.g. stars), you might get additional role elements. How many values you need and which rights you will get is determined in the inheritance table. e.g after getting 30 stars in a discussion you may get editoral rights like the right to add annotations .

This simple mechanism of rating rises certainly a number of questions. We will try to find suitable answers within the project and hopefully the software developers will be able to implement our design suggestions within the resources of the project:

1. Is it possible to allow different kinds of virtual currencies (like stars, flowers and sadfaces) and according to them different functions, that will be activated or even deactivated, e.g. after getting 30 stars you will get more editorial rights and after getting 10 flowers your new messages will get a special visual clue?

2. How do we set the total amount of stars? Who will "print new money"? Will there be a general bank? A unit of a value system (like a currency) represents a given set of goods or services. What can we offer in a virtual reality? Here we will study approaches from conservative, libertarian and alternative economic theory **[11]**.

3. If there's a limited account for everybody what shall be the measure for getting new rights: turnover or the present amount of values. In the latter case it would mean that giving away own points would reduce the own account. If you measure it by turnover we could exclude mechanisms of competition and egoism.

4. How many currencies should be used and how can they be converted? Can these "currencies of competence" be converted to real economic goods or currencies? Or do they only have their value in an information economy of ideas and contributions?

A lot of questions have to be clarified with experts e.g. in the field of alternative economies. However, our main design goal for a basic conferencing service like Web4Groups is to have highest flexibility in role management now to allow experiments on information economies and role setting in diversified social settings in an advanced project stage.

**Research Tasks**

As this paper is a description of a research program, we do not end up with conclusions, but a collection of questions, which are guidelines for further investigations, that will be performed by an interdisciplinary research group at the Austrian Academy of Sciences in co-operation with user organisations and developers.

1. What are the consequences of fixed role-systems and which impacts on social dynamics and individual well-being will arise from more flexibility in telecommunication applications?

2. What are the inherent advantages and problems of money-economy? In which sectors can new value systems be applied? Can the experiences of evolving local barter systems be applied to the exchange of messages in conferencing services?

3. What is the result of a system where even basic human activities like communication are involved in an economy? Will it relativize other areas of economy or will it economize communication? How much can we economize communication?

4. How can voting support the setting of social rules and how should voting procedures be designed?

5. How could virtual economies in Web4Groups look like? How flexible must a system be to allow different experimental economies and which is the minimum of elements that a economy needs for getting started?

6. Are evolving professional rating services **[12]** suitable for the needs of conferencing services?

7. What are real user requirements with respect to adaptable roles, rating and voting?

Research results are expected for mid 1997 and will be made available via the Web4Groups project web pages at [http://www.soe.oeaw.ac.at/w4g/](http://www.soe.oeaw.ac.at/w4g/)

---

---

[1] EMISARI is considered as the first conferencing system in service for coordinating activities of departments of the Nixon administration in 1971, that was faced with a wage and price freeze. The price controls created a demand for information, guidelines, policy statements, clarifications and rulings from labor unions, businesses, brokers and government administrators. It was an electronic forum for what we have established in Austria to negotiate interests of different social parties, mainly representatives of industry and workers (Sozialpartnerschaft).

[2] For a more complete project description, including a user requirements investigation, see: [http://www.soe.oeaw.ac.at/w4g/](http://www.soe.oeaw.ac.at/w4g/)

[3] A proxy is a kind of Internet gateway located near the user who browses through the net. It`s function is normally to cache pages; the Web4Groups proxy will additionally check, if a page has a discussionm area attached and adds a button to that page for starting or entering a discussion.

[4] An asynchronous conferencing services offer social interactions only in a non-simultaneous mode. This paper does not tackle design issues for simultaneous conferencing.

[5] Alton-Scheidl, Roland: Technology Assessment im kulturellen Sektor: Die Medienkunst als strategischer Partner. In: Wolfinger, Bernd, Innovationen bei Rechen- und Kommunikationssystemen. Springer: Heidelberg, 1994.

[6] Draft Web4Groups user requirements. In: Web4Groups project proposal. Based on work in the International Standardisation Organistaion, group ISO/IEC JTC 1/SC 18/WG 4 and WG1.

[7] The comparison included asynchronous conferencing services accessible via the WWW: HyperNews, WebForum, Aqui, Webnotes. For a list of related projects see: [http://www.soe.oeaw.ac.at/w4g/sources/](http://www.soe.oeaw.ac.at/w4g/sources/)

[8] CMC - Computer Mediated Communication

[9] Heinz von Foerster, Zukunft der Wahrnehmung: Wahrnehmung der Zukunft, in: Sicht und Einsicht S12 f.Braunschweig. Vieweg, 1985

[10] The fragmentation of society or in other terms its differentiation may reach an extent that cannot be imagined from our present perspective. But somehow we we have to think about the consquences. Will it be a big number of piecefully coexisting systems or will it be a "babylonian confusion of languages".

[11] Local Economic Trade Systems (LETS) are based on an early idea of using private money, which has been repeated by the Nobel Price Economist Friedrich A. von Hayek in 1976 in his book on "Denationalising Money". Local barter systems are growing world wide and tend to eliminate drawbacks of our usual monetarian system, like accumulation or inflation.

[12] E.g. PICS (Platform of Internet Content Selection), see [http://www.w3.org/pub/www/PICS/](http://www.w3.org/pub/www/PICS/)
