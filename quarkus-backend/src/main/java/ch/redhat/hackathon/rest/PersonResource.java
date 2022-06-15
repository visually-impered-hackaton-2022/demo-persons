package ch.redhat.hackathon.rest;
import ch.redhat.hackathon.domain.Person;
import ch.redhat.hackathon.persistence.PersonRepository;
import io.quarkus.hibernate.orm.rest.data.panache.PanacheRepositoryResource;
import io.quarkus.rest.data.panache.ResourceProperties;

@ResourceProperties(path = "persons")
public interface PersonResource extends PanacheRepositoryResource<PersonRepository, Person,Long> {
}
