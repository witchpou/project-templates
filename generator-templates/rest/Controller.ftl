package de.${app.packagePrefix?lower_case}.rest.controller;

import de.${app.packagePrefix?lower_case}.persistence.entity.${domain.name};
import de.${app.packagePrefix?lower_case}.service.impl.${domain.name}Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * ${domain.name} RestController
 * Have a look at the RequestMapping!!!!!!
 */
@RestController
@RequestMapping("${r"${rest.base-path}"}/${domain.name?lower_case}")
public class ${domain.name}Controller {

    @Autowired
    private ${domain.name}Service ${domain.name?lower_case}Service;

    @GetMapping
    public List<${domain.name}> findAll() {
        return this.${domain.name?lower_case}Service.findAll();
    }

    @GetMapping(value = "/{id}")
    public ${domain.name} findById(@PathVariable("id") Long id) {
        return this.${domain.name?lower_case}Service.findById(id);
    }

    /**
     * @param ${domain.name?lower_case}
     */
    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public void save(@RequestBody ${domain.name} ${domain.name?lower_case}) {
        this.${domain.name?lower_case}Service.saveOrUpdate(${domain.name?lower_case});
    }

    @PutMapping
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void update(@RequestBody ${domain.name} ${domain.name?lower_case}) {
        this.${domain.name?lower_case}Service.saveOrUpdate(${domain.name?lower_case});
    }

    @DeleteMapping
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void delete(@RequestBody ${domain.name} ${domain.name?lower_case}) {
        this.${domain.name?lower_case}Service.delete(${domain.name?lower_case});
    }

}
