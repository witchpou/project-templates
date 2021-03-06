package de.${project.packagePrefix?lower_case}.service.impl;

import de.${project.packagePrefix?lower_case}.persistence.entity.${domain.name};
import de.${project.packagePrefix?lower_case}.persistence.repository.${domain.name}Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import java.util.Date;
import java.util.List;

/**
 * 
 * ${domain.name} Service class
 *
 */
@Service
public class ${domain.name}Service {

    @Autowired
    private ${domain.name}Repository ${domain.name?lower_case}Repository;

    /**
     * @return
     */
    public List<${domain.name}> findAll() {
        return this.${domain.name?lower_case}Repository.findAll();
    }

    /**
     * @param id
     * @return
     */
    public ${domain.name} findById(Long id) {
        return this.${domain.name?lower_case}Repository.findById(id).orElseThrow(() -> new EntityNotFoundException(String.valueOf(id)));
    }

    /**
     * @param ${domain.name?lower_case}
     * @return
     */
    public ${domain.name} saveOrUpdate(${domain.name} ${domain.name?lower_case}) {
        this.${domain.name?lower_case}Repository.save(${domain.name?lower_case});
        return ${domain.name?lower_case};
    }

    /**
     * @param ${domain.name?lower_case}
     */
    public void delete(${domain.name} ${domain.name?lower_case}) {
        this.${domain.name?lower_case}Repository.delete(${domain.name?lower_case});
    }

}
