// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.org.intersect.dms.catalogue;

import java.lang.String;

privileged aspect Dataset_Roo_ToString {
    
    public String Dataset.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Visible: ").append(isVisible()).append(", ");
        sb.append("Schemas: ").append(getSchemas() == null ? "null" : getSchemas().size()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Url: ").append(getUrl()).append(", ");
        sb.append("Owner: ").append(getOwner()).append(", ");
        sb.append("CreationDate: ").append(getCreationDate()).append(", ");
        sb.append("Metadata: ").append(getMetadata() == null ? "null" : getMetadata().size()).append(", ");
        sb.append("ProjectCode: ").append(getProjectCode());
        return sb.toString();
    }
    
}
