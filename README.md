# Ontologies

![Syntax check](https://github.com/thisIsTheFoxe/semantic-web/workflows/Syntax%20check/badge.svg)

## RDFS

Ontology about the characters of the BBC TV series 'Sherlock' taken from [Bakerstreet Wiki](https://bakerstreet.fandom.com/wiki/Main_Page) in Turtle syntax.

[`rdfs.ttl`](/RDFS/rdfs.ttl)

### SPARQL

1. Start apache fuseki server with docker: `docker-compose up --build --detach`
2. Go to [localhost:3030](http://localhost:3030/)
3. Sign in with credentials admin:admin
4. Import [`rdfs.ttl`](/RDFS/rdfs.ttl) into dataset
5. Run queries in [`sparql.rq`](/RDFS/sparql.rq)

## OWL

Same ontology as in [RDFS](#rdfs) but more complicated.

[`owl.ttl`](/OWL/owl.ttl)

### Conclusions

| Type | Natural speech | DL query | Result |
| --- | --- | --- | --- |
| **Subsumption** | Does `Actor` &#8838; `Person` apply? | `Actor and Person` | 7 instances |
| **Instance** | Does `Sherlock_Holmes` belong to class `Person`? | `Person and rdfs:label value "Sherlock Holmes"` | 1 instance |
| **Property instance** | Is John Watson a friend of Eurus Holmes? | `rdfs:label value "John Watson" and friend value 'Eurus Holmes'` | :x: |
| **Property extension** | Which siblings are enemies? | `sibling some Character and enemy some Character` | 3 instances |
