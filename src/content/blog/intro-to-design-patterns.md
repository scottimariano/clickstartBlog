---
author: Mariano Scotti
pubDatetime: 2024-01-17T11:15:00Z
title: Software Design Patterns
postSlug: software-design-patterns
featured: false
tags:
  - Development
  - Design Patterns
  - Basic
  - Object Oriented Program
description: A brief intro to the Software Development Design Patterns.
---

Their goal is to provide a catalog of reusable elements in the design of software systems and avoid repetition in the search for solutions to problems that are already known and solved.

![Software Patterns Design](../../assets/images/posts/softwareDeveloper.webp)

## Table of contents

## Introduction

In this document, you will find an approach to software design patterns, a bit of history on their creation, their purposes, and the main patterns in each category.

## Design Patterns - What are they?

According to Wikipedia, "Design patterns are techniques for solving common problems in software development and other areas related to interaction or interface design." In other words, design patterns are ways of doing things that other developers have discovered to be effective in solving the same problems.

## A bit of history

In 1979, architect C. Alexander proposed the use of a series of patterns for building higher-quality buildings in his book "The Timeless Way of Building." He outlined various patterns, where "each one describes a problem that occurs over and over again in our environment, along with the solution, so that we can use this solution a million times over without ever having to think about it again."  
Years later, in 1987 to be more specific, Ward Cunningham and Kent Benk, aiming to improve and expedite the training of new programmers, found a great parallelism between Alexander's thinking and OO software architecture. Using several of his ideas, they developed five human-computer interaction patterns, which they published in an article called "Using Pattern Languages for OO Programs."  
Although this was the beginning, it wasn't until the mid-'90s that patterns gained success in the world of computing with the publication of the book "Design Patterns" by The Gang of Four, composed of Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides, where these initial 5 patterns grew to 23.
What is the purpose of a design pattern?
Software design patterns are like recipes or guides that help us solve common problems encountered when designing and developing software. They are proven and reliable solutions that other developers have used in similar situations.  
We could summarize the objectives of using design patterns as follows, though not limited to these:

- Provide a catalog of reusable elements in system design.
- Avoid the repetition of searching for solutions to problems already known and solved.
- Formalize a common vocabulary among software developers.
- Standardize the way design is done.
- Facilitate learning for new developers.

## Categories

There are three categories for classifying design patterns based on their purpose.

- **Creational Patterns:** Provide mechanisms for creating objects that increase flexibility and reuse of existing code.
- **Structural Patterns:** Explain how to assemble objects and classes into larger structures while maintaining flexibility and efficiency in the structure.
- **Behavioral Patterns:** Deal with generating effective communication and proper assignment of responsibilities between objects.

Below is a summary of all the patterns in each category. I recommend delving into the recommended literature for more details on each of them.

### Creational Patterns:

1. **Singleton:**
   Ensures that a class has only one instance and provides a global point of access to that instance. Useful when a single shared object is needed throughout the system.

2. **Factory Method:**
   Defines an interface for creating objects but allows subclasses to decide which concrete class to instantiate. This delegates the creation of objects to subclasses.

3. **Abstract Factory:**
   Provides an interface for creating families of related or dependent objects without specifying their concrete classes. Allows the creation of related objects without coupling the code to concrete implementations.

4. **Builder:**
   Used to build complex objects step by step. Separates the construction of the object from its representation and allows the same construction process to create different representations.

5. **Prototype:**
   Allows creating new objects by cloning an existing prototype instead of creating them from scratch. This avoids dependency on concrete classes and provides a flexible way to create objects.

### Structural Patterns:

6. **Adapter:**
   Used to convert the interface of a class into another interface expected by clients. Allows incompatible classes to work together by wrapping the interface of one of the objects.

7. **Bridge:**
   Decouples an abstraction from its implementation, allowing both to vary independently. Provides a bridge-like structure between classes and their implementations.

8. **Composite:**
   Used to compose objects into tree structures to represent part-whole hierarchies. Allows treating individual objects and compositions of objects uniformly.

9. **Decorator:**
   Allows dynamically adding additional behavior to an object. Provides a flexible alternative to inheritance for extending the functionality of an object.

10. **Facade:**
    Provides a simplified interface for a set of more complex interfaces in a subsystem. Acts as a facade that hides complexity and facilitates the use of the subsystem.

11. **Flyweight:**
    Used to minimize memory usage by efficiently sharing large objects common in an application. Allows creating multiple lightweight objects representing instances of similar objects.

12. **Proxy:**
    Provides a substitute or representative for another object to control access to that object. Acts as an access interface to the real object and can add additional functionality, such as permission checking or caching.

### Behavioral Patterns:

13. **Chain of Responsibility:**
    Allows multiple objects to handle a request in turn. Each object in the chain has the option to handle the request or pass it to the next object in the chain.

14. **Command:**
    Encapsulates a request as an object, allowing clients to be parameterized with different requests, queue or log requests, and support undo operations.

15. **Iterator:**
    Provides a way to access elements of a collection sequentially without exposing its underlying representation. Allows iterating through a collection of objects uniformly without knowing implementation details.

16. **Mediator:**
    Defines an object that encapsulates how a set of objects interact. Promotes low coupling by preventing objects from explicitly referring to each other and allows them to communicate through a mediator object.

17. **Memento:**
    Captures and stores the internal state of an object without violating encapsulation, allowing the object to return to this state later. Enables saving and restoring snapshots of an object's state.

18. **Observer:**
    Establishes a one-to-many relationship between objects, so when the state of one object changes, all dependent objects are notified and updated automatically.

19. **State:**
    Allows an object to alter its behavior when its internal state changes. Defines a family of classes representing different states and facilitates the transition between them.

20. **Strategy:**
    Defines a family of algorithms, encapsulates each one, and makes them interchangeable. Allows the algorithm to vary independently of clients using it.

21. **Template Method:**
    Defines the skeleton of an algorithm in a base class and allows subclasses to provide concrete implementations for certain steps of the algorithm. Controls the overall flow of the algorithm while letting details be implemented by subclasses.

22. **Visitor:**
    Allows adding additional operations or behaviors to an existing object structure without modifying that structure. Defines a new operation (visitor) that visits individual objects of a structure and performs some action based on the type of visited object.

## Recommended Bibliography and Links:

- [Refactoring Guru - Design Patterns](https://refactoring.guru/es/design-patterns)
- [Wikipedia - Design Pattern](https://es.wikipedia.org/wiki/Patr%C3%B3n_de_dise%C3%B1o)
- "Head First Design Patterns" by Eric Freeman and Kathy Sierra
