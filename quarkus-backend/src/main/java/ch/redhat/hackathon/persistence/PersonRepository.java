package ch.redhat.hackathon.persistence;

import javax.enterprise.context.ApplicationScoped;

import ch.redhat.hackathon.domain.Person;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

@ApplicationScoped
public class PersonRepository implements PanacheRepository<Person> {

}
