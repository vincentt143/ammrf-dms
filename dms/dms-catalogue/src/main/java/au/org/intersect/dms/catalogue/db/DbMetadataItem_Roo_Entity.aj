// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.org.intersect.dms.catalogue.db;

import au.org.intersect.dms.catalogue.db.DbMetadataItem;
import java.lang.Integer;
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
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DbMetadataItem_Roo_Entity {
    
    declare @type: DbMetadataItem: @Entity;
    
    declare @type: DbMetadataItem: @Table(name = "metadata_item");
    
    @PersistenceContext(unitName = "cataloguePU")
    transient EntityManager DbMetadataItem.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long DbMetadataItem.id;
    
    @Version
    @Column(name = "version")
    private Integer DbMetadataItem.version;
    
    public Long DbMetadataItem.getId() {
        return this.id;
    }
    
    public void DbMetadataItem.setId(Long id) {
        this.id = id;
    }
    
    public Integer DbMetadataItem.getVersion() {
        return this.version;
    }
    
    public void DbMetadataItem.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void DbMetadataItem.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DbMetadataItem.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DbMetadataItem attached = this.entityManager.find(this.getClass(), this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DbMetadataItem.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public DbMetadataItem DbMetadataItem.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DbMetadataItem merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager DbMetadataItem.entityManager() {
        EntityManager em = new DbMetadataItem().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DbMetadataItem.countDbMetadataItems() {
        return entityManager().createQuery("select count(o) from DbMetadataItem o", Long.class).getSingleResult();
    }
    
    public static List<DbMetadataItem> DbMetadataItem.findAllDbMetadataItems() {
        return entityManager().createQuery("select o from DbMetadataItem o", DbMetadataItem.class).getResultList();
    }
    
    public static DbMetadataItem DbMetadataItem.findDbMetadataItem(Long id) {
        if (id == null) return null;
        return entityManager().find(DbMetadataItem.class, id);
    }
    
    public static List<DbMetadataItem> DbMetadataItem.findDbMetadataItemEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from DbMetadataItem o", DbMetadataItem.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
