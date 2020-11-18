package de.${project.packagePrefix?lower_case}.persistence.repository;

import de.${project.packagePrefix?lower_case}.persistence.entity.${domain.name};
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * ${domain.name} Repository class
 */
@Repository
public interface ${domain.name}Repository extends JpaRepository<${domain.name}, Long> {

}
