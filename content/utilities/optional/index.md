---
title: "<optional>"
---

Subclause 22.5 describes class template optional that represents optional
objects. An optional object is an object that contains the storage for another
object and manages the lifetime of this contained object, if any. The contained
object may be initialized after the optional object has been initialized, and
may be destroyed before the optional object has been destroyed. The
initialization state of the contained object is tracked by the optional object.
