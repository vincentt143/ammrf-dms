// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.org.intersect.dms.service.domain;

import java.lang.String;

privileged aspect DmsUser_Roo_ToString {
    
    public String DmsUser.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("Username: ").append(getUsername()).append(", ");
        sb.append("Jobs: ").append(getJobs() == null ? "null" : getJobs().size()).append(", ");
        sb.append("Admin: ").append(isAdmin());
        return sb.toString();
    }
    
}
