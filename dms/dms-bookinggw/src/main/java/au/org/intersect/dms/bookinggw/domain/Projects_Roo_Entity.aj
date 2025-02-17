// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.org.intersect.dms.bookinggw.domain;

import au.org.intersect.dms.bookinggw.domain.Projects;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Table;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Projects_Roo_Entity {
    
    declare @type: Projects: @Entity;
    
    declare @type: Projects: @Table(name = "projects");
    
    @PersistenceContext(unitName = "bookinggwPU")
    transient EntityManager Projects.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "projcode")
    private Long Projects.projcode;
    
    public Long Projects.getProjcode() {
        return this.projcode;
    }
    
    public void Projects.setProjcode(Long id) {
        this.projcode = id;
    }
    
    @Transactional
    public void Projects.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Projects.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Projects attached = this.entityManager.find(this.getClass(), this.projcode);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Projects.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public Projects Projects.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Projects merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Projects.entityManager() {
        EntityManager em = new Projects().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Projects.countProjectses() {
        return entityManager().createQuery("select count(o) from Projects o", Long.class).getSingleResult();
    }
    
    public static List<Projects> Projects.findAllProjectses() {
        return entityManager().createQuery("select o from Projects o", Projects.class).getResultList();
    }
    
    public static Projects Projects.findProjects(Long id) {
        if (id == null) return null;
        return entityManager().find(Projects.class, id);
    }
    
    public static List<Projects> Projects.findProjectsEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from Projects o", Projects.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
